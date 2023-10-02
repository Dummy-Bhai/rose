clc;clear;
function [za]=ztransfer(sequence, n)
    z=poly(0,'z','r')

    za=sequence*(1/z)^n'

endfunction

x1=[1,-3,2];
n1=0:length(x1)-1;
X1=ztransfer(x1,n1); 
x2=[1,2,1]; 
n2=0:length(x2)-1;
X2=ztransfer(x2,n2); 
X=X1*X2; 
disp('X(z)=',X); 
z=poly(0,'z');
X=[1;-z^-1;-3*z^-2;z^-3;2*z^-4]; 
n=0:4;
Z1=z^n';
x=(X.*Z1);
disp('x[n]=',x);
