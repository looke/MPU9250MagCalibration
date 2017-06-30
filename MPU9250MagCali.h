/*
 * MPU9250MagCali.h
 *
 *  Created on: 2017年6月28日
 *      Author: looke
 */

#ifndef MPU9250MAGCALI_H_
#define MPU9250MAGCALI_H_

#include "MPU9250SPI.h"
#include "StaticMatrix.h"

class MPU9250MagCali
{
public:
	MPU9250MagCali(MPU9250SPI* p_in_9250SPI);

	void collect_X_Positive();
	void collect_X_Negative();

	void collect_Y_Positive();
	void collect_Y_Negative();

	void collect_Z_Positive();
	void collect_Z_Negative();

	void collect_Random();

	void generateMagDataMatrixForCali(int number);
	void generateMagDataMatrixRow(int rowIndex, short int mag_x, short int mag_y, short int mag_z);

	//生成校正参数
	void generateCaliPara();
private:
	//9250 SPI接口
	MPU9250SPI* p_9250SPI;

	//样本数
	int sampleNumberForXYZ;
	int sampleNumberForRandom;

	//采样间隔等待时间 ms
	int sampleTime;

	//校正的重试次数，若一次校正失败，则重试
	int retryNum;

	//样本收取步长:从样本点中挑选一部分形成椭圆拟合矩阵，该步长表示获取数量
	int sampleXYZ_step;
	//样本收取步长:从样本点中挑选一部分形成椭圆拟合矩阵，该步长表示获取数量
	int sampleRandom_step;

	//样本点队列[][0]:X轴数据 | [][1]:Y轴数据  | [][2]:Z轴数据
	short int mag_Original_X_Positive[10][3];
	short int mag_Original_X_Negative[10][3];

	short int mag_Original_Y_Positive[10][3];
	short int mag_Original_Y_Negative[10][3];

	short int mag_Original_Z_Positive[10][3];
	short int mag_Original_Z_Negative[10][3];

	short int mag_Original_Random[40][3];

	//样本点中的20个样本，根据校正椭圆公式，形成20x10的矩阵
	StaticMatrix magDataMatrixForCali;

};


#endif /* MPU9250MAGCALI_H_ */
