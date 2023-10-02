clc();
x0=0;
xine=0.001;
xf=1;
x=x0:xine:xf;
function xa=f(x,y)
    xa=sqrt(x.^2+2*x+0.01);
endfunction
xgrid();
subplot(2,1,1);
plot(x,f);
ylabel('y(x)','fontsize',2);
title('Analytic solution','fontsize',2);
y0=0.1;
ydiff=ode(y0,x0,x,f);
subplot(2,1,2);
plot(x,ydiff,'r');
xgrid();
title('Numeric Solution','fontsize',2);
ylabel('y(x)','fontsize',2);
xlabel('x','fontsize',2);
