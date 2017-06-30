/*
 * MPU9250MagCali.cpp
 *
 *  Created on: 2017年6月28日
 *      Author: looke
 */
#include "MPU9250MagCali.h"

MPU9250MagCali::MPU9250MagCali(MPU9250SPI* p_in_9250SPI)
{
	this->p_9250SPI = p_in_9250SPI;

	//样本数
	sampleNumberForXYZ = 10;
	sampleNumberForRandom = 40;

	//采样间隔等待时间 ms
	sampleTime = 20;

	//校正的重试次数，若一次校正失败，则重试
	retryNum = 5;

	//样本收取步长:从样本点中挑选一部分形成椭圆拟合矩阵，该步长表示XYZ三周极限域样本获取数量为2个，XYZ共6个极限域，获取样本数为12
	sampleXYZ_step = 2;
	//样本收取步长:从样本点中挑选一部分形成椭圆拟合矩阵，该步长表示随机样本获取数量为8个，和XYZ极限域12个样本点共同形成20组数据
	sampleRandom_step = 8;

	magDataMatrixForCali = StaticMatrix(20,10);
}

/*
 * get X axis max data from mag
 */
void MPU9250MagCali::collect_X_Positive()
{
	for(int i=0; i<this->sampleNumberForXYZ; i++)
	{
		p_9250SPI->read_Mag_Data();

		mag_Original_X_Positive[i][0] = (p_9250SPI->mag_X_H << 8) | p_9250SPI->mag_X_L;
		mag_Original_X_Positive[i][1] = (p_9250SPI->mag_Y_H << 8) | p_9250SPI->mag_Y_L;
		mag_Original_X_Positive[i][2] = (p_9250SPI->mag_Z_H << 8) | p_9250SPI->mag_Z_L;

		delay(this->sampleTime);
	}
};

/*
 * get X axis minimum data from mag
 */
void MPU9250MagCali::collect_X_Negative()
{
	for(int i=0; i<this->sampleNumberForXYZ; i++)
	{
		p_9250SPI->read_Mag_Data();

		mag_Original_X_Negative[i][0] = (p_9250SPI->mag_X_H << 8) | p_9250SPI->mag_X_L;
		mag_Original_X_Negative[i][1] = (p_9250SPI->mag_Y_H << 8) | p_9250SPI->mag_Y_L;
		mag_Original_X_Negative[i][2] = (p_9250SPI->mag_Z_H << 8) | p_9250SPI->mag_Z_L;

		delay(this->sampleTime);
	}
};

/*
 * get Y axis max data from mag
 */
void MPU9250MagCali::collect_Y_Positive()
{
	for(int i=0; i<this->sampleNumberForXYZ; i++)
	{
		p_9250SPI->read_Mag_Data();

		mag_Original_Y_Positive[i][0] = (p_9250SPI->mag_X_H << 8) | p_9250SPI->mag_X_L;
		mag_Original_Y_Positive[i][1] = (p_9250SPI->mag_Y_H << 8) | p_9250SPI->mag_Y_L;
		mag_Original_Y_Positive[i][2] = (p_9250SPI->mag_Z_H << 8) | p_9250SPI->mag_Z_L;

		delay(this->sampleTime);
	}
};

/*
 * get Y axis minimum data from mag
 */
void MPU9250MagCali::collect_Y_Negative()
{
	for(int i=0; i<this->sampleNumberForXYZ; i++)
	{
		p_9250SPI->read_Mag_Data();

		mag_Original_Y_Negative[i][0] = (p_9250SPI->mag_X_H << 8) | p_9250SPI->mag_X_L;
		mag_Original_Y_Negative[i][1] = (p_9250SPI->mag_Y_H << 8) | p_9250SPI->mag_Y_L;
		mag_Original_Y_Negative[i][2] = (p_9250SPI->mag_Z_H << 8) | p_9250SPI->mag_Z_L;

		delay(this->sampleTime);
	}
};

/*
 * get Z axis max data from mag
 */
void MPU9250MagCali::collect_Z_Positive()
{
	for(int i=0; i<this->sampleNumberForXYZ; i++)
	{
		p_9250SPI->read_Mag_Data();

		mag_Original_Z_Positive[i][0] = (p_9250SPI->mag_X_H << 8) | p_9250SPI->mag_X_L;
		mag_Original_Z_Positive[i][1] = (p_9250SPI->mag_Y_H << 8) | p_9250SPI->mag_Y_L;
		mag_Original_Z_Positive[i][2] = (p_9250SPI->mag_Z_H << 8) | p_9250SPI->mag_Z_L;

		delay(this->sampleTime);
	}
};

/*
 * get Z axis minimum data from mag
 */
void MPU9250MagCali::collect_Z_Negative()
{
	for(int i=0; i<this->sampleNumberForXYZ; i++)
	{
		p_9250SPI->read_Mag_Data();

		mag_Original_Z_Negative[i][0] = (p_9250SPI->mag_X_H << 8) | p_9250SPI->mag_X_L;
		mag_Original_Z_Negative[i][1] = (p_9250SPI->mag_Y_H << 8) | p_9250SPI->mag_Y_L;
		mag_Original_Z_Negative[i][2] = (p_9250SPI->mag_Z_H << 8) | p_9250SPI->mag_Z_L;

		delay(this->sampleTime);
	}
};

/*
 * get random data from mag
 */
void MPU9250MagCali::collect_Random()
{
	for(int i=0; i<this->sampleNumberForRandom; i++)
	{
		p_9250SPI->read_Mag_Data();

		mag_Original_Random[i][0] = (p_9250SPI->mag_X_H << 8) | p_9250SPI->mag_X_L;
		mag_Original_Random[i][1] = (p_9250SPI->mag_Y_H << 8) | p_9250SPI->mag_Y_L;
		mag_Original_Random[i][2] = (p_9250SPI->mag_Z_H << 8) | p_9250SPI->mag_Z_L;

		delay(this->sampleTime);
	}
};

/*
 * 从样本点中选出20组数据，构造椭圆参数矩阵
 */
void MPU9250MagCali::generateMagDataMatrixForCali(int number)
{
	int dataIndex = number*this->sampleXYZ_step;

	//x positive 2组数据
	generateMagDataMatrixRow(0,mag_Original_X_Positive[dataIndex][0],mag_Original_X_Positive[dataIndex][1],mag_Original_X_Positive[dataIndex][2]);
	generateMagDataMatrixRow(1,mag_Original_X_Positive[dataIndex+1][0],mag_Original_X_Positive[dataIndex+1][1],mag_Original_X_Positive[dataIndex+1][2]);

	//x negative 2组数据
	generateMagDataMatrixRow(2,mag_Original_X_Negative[dataIndex][0],mag_Original_X_Negative[dataIndex][1],mag_Original_X_Negative[dataIndex][2]);
	generateMagDataMatrixRow(3,mag_Original_X_Negative[dataIndex+1][0],mag_Original_X_Negative[dataIndex+1][1],mag_Original_X_Negative[dataIndex+1][2]);

	//y positive 2组数据
	generateMagDataMatrixRow(4,mag_Original_Y_Positive[dataIndex][0],mag_Original_Y_Positive[dataIndex][1],mag_Original_Y_Positive[dataIndex][2]);
	generateMagDataMatrixRow(5,mag_Original_Y_Positive[dataIndex+1][0],mag_Original_Y_Positive[dataIndex+1][1],mag_Original_Y_Positive[dataIndex+1][2]);

	//y negative 2组数据
	generateMagDataMatrixRow(6,mag_Original_Y_Negative[dataIndex][0],mag_Original_Y_Negative[dataIndex][1],mag_Original_Y_Negative[dataIndex][2]);
	generateMagDataMatrixRow(7,mag_Original_Y_Negative[dataIndex+1][0],mag_Original_Y_Negative[dataIndex+1][1],mag_Original_Y_Negative[dataIndex+1][2]);

	//z positive 2组数据
	generateMagDataMatrixRow(8,mag_Original_Z_Positive[dataIndex][0],mag_Original_Z_Positive[dataIndex][1],mag_Original_Z_Positive[dataIndex][2]);
	generateMagDataMatrixRow(9,mag_Original_Z_Positive[dataIndex+1][0],mag_Original_Z_Positive[dataIndex+1][1],mag_Original_Z_Positive[dataIndex+1][2]);

	//z negative 2组数据
	generateMagDataMatrixRow(10,mag_Original_Z_Negative[dataIndex][0],mag_Original_Z_Negative[dataIndex][1],mag_Original_Z_Negative[dataIndex][2]);
	generateMagDataMatrixRow(11,mag_Original_Z_Negative[dataIndex+1][0],mag_Original_Z_Negative[dataIndex+1][1],mag_Original_Z_Negative[dataIndex+1][2]);

	//random 8组数据
	dataIndex = number*this->sampleRandom_step;
	for(int i=0; i<8; i++)
	{
		generateMagDataMatrixRow(12+i,mag_Original_Random[dataIndex+i][0],mag_Original_Random[dataIndex+i][1],mag_Original_Random[dataIndex+i][2]);
	}
};


/*
 * 根据椭圆公式，以及磁力计x,y,z轴的读数，形成椭圆参数方程
 * a*Mag_X^2
 * b*Mag_X*Mag_Y
 * c*Mag_Y^2
 * d*Mag_X*Mag_Z
 * e*Mag_Y*Mag_Z
 * j*Mag_Z^2
 * p*Mag_X
 * q*Mag_Y
 * r*Mag_Z
 * s
 */
void MPU9250MagCali::generateMagDataMatrixRow(int rowIndex, short int mag_x, short int mag_y, short int mag_z)
{
	magDataMatrixForCali.setMatrixElement(rowIndex, 0, mag_x*mag_x);
	magDataMatrixForCali.setMatrixElement(rowIndex, 1, mag_x*mag_y);
	magDataMatrixForCali.setMatrixElement(rowIndex, 2, mag_y*mag_y);
	magDataMatrixForCali.setMatrixElement(rowIndex, 3, mag_x*mag_z);
	magDataMatrixForCali.setMatrixElement(rowIndex, 4, mag_y*mag_z);
	magDataMatrixForCali.setMatrixElement(rowIndex, 5, mag_z*mag_z);
	magDataMatrixForCali.setMatrixElement(rowIndex, 6, mag_x);
	magDataMatrixForCali.setMatrixElement(rowIndex, 7, mag_y);
	magDataMatrixForCali.setMatrixElement(rowIndex, 8, mag_z);
	magDataMatrixForCali.setMatrixElement(rowIndex, 9, 1);
};
