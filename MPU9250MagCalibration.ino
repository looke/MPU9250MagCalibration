#include "MPU9250MagCali.h"
#include "StaticMatrix.h"

StaticMatrix testMatrix = StaticMatrix(3,3);
//The setup function is called once at startup of the sketch
void setup()
{
	// Add your initialization code here
	//testMatrix = StaticMatrix(3,3);
}



// The loop function is called in an endless loop
void loop()
{
	delay(1000);
	//Add your repeated code here
	//testMatrix.printMatrix();
	testMatrix.getLowEdge();
}
