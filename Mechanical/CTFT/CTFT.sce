clear;
clc;
close;
A=1;
Dt=0.005;
T1=4;
t=-T1/2:Dt:T1/2;
for i=1:length(t)
 xt(i)=A;
end
Wmax=2*%pi*1;
K=4;
k=0:(K/1000):K;
W=k*Wmax/K;
xt=xt';
XW=xt*exp(-sqrt(-1)*t'*W)*Dt;
XW_Mag=real(XW);
subplot(2,1,1);
a=gca();
a.data_bounds=[-4,0;4,2];
a.y_location="origin";
plot(t,xt);
xlabel('t in msec.');
title('Continous Time Signal x(t)');
subplot(2,1,2);
a=gca();
a.y_location="origin";
plot(W,XW_Mag);
xlabel('Frequency in Radians/Seconds');
title('Continous Time Fourier Transform X(jW)')
