#include <iostream>
#include <vector>
#include <fstream>
#include <string>
#include <cmath>
using namespace std;

int main()
{
ofstream data_theta;
data_theta.open("theta");
//JDJDJDJDJDJDJDJDJDJD
unsigned int N=18;
double dt=0.01;
double coeff=0.1;
double Pow=1.0;
double K=1.0/coeff*Pow;
double tf=1000.0;
vector <double> theta(N,0.0);
vector <double> thetaold(N,0.0);
vector <double> P(N,0.0);
theta[0]=0.0;
theta[2]=0.0;
P[0]=Pow;
P[1]=0.0;
P[2]=0.0;
P[3]=0.0;
P[4]=0.0;
P[5]=0.0;
P[6]=-Pow;
P[7]=0.0;
for(unsigned int i=0;i<N;i++)
{
//	P[i]=0.1*i;
	theta[i]=0.9-0.1*i;
	data_theta<<theta[i]<<" ";
}
	data_theta<<"\n";

for(double t=0.0;t<tf;t=t+dt)
{
	for(unsigned int i=0;i<N;i++)
	{
		thetaold[i]=theta[i];
		theta[i]+=dt*(P[i]-K*sin(theta[i]-thetaold[(i+1)%N]));
		data_theta<<theta[i]<<" ";
	}
	data_theta<<"\n";
if(t>0.9*tf)
{
	coeff+=0.05;
}

}


cout <<coeff<<endl;

data_theta.close();
return 0;
}
