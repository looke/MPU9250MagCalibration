/*
 * MPU9250MagCali.h
 *
 *  Created on: 2017��6��28��
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

	//����У������
	void generateCaliPara();
private:
	//9250 SPI�ӿ�
	MPU9250SPI* p_9250SPI;

	//������
	int sampleNumberForXYZ;
	int sampleNumberForRandom;

	//��������ȴ�ʱ�� ms
	int sampleTime;

	//У�������Դ�������һ��У��ʧ�ܣ�������
	int retryNum;

	//������ȡ����:������������ѡһ�����γ���Բ��Ͼ��󣬸ò�����ʾ��ȡ����
	int sampleXYZ_step;
	//������ȡ����:������������ѡһ�����γ���Բ��Ͼ��󣬸ò�����ʾ��ȡ����
	int sampleRandom_step;

	//���������[][0]:X������ | [][1]:Y������  | [][2]:Z������
	short int mag_Original_X_Positive[10][3];
	short int mag_Original_X_Negative[10][3];

	short int mag_Original_Y_Positive[10][3];
	short int mag_Original_Y_Negative[10][3];

	short int mag_Original_Z_Positive[10][3];
	short int mag_Original_Z_Negative[10][3];

	short int mag_Original_Random[40][3];

	//�������е�20������������У����Բ��ʽ���γ�20x10�ľ���
	StaticMatrix magDataMatrixForCali;

};


#endif /* MPU9250MAGCALI_H_ */
