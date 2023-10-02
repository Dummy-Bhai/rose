clc();
function xdot=linear(t, x, A, u, B, omega)
    xdot=A*x+B*u(t,omega)
endfunction
function ut=u(t, omega)
    ut=sin(omega*t)
endfunction
A=[1 1;0 2];
B=[1;1];
omega=5;
y0=[1;0];
t0=0;
t=[0.1,0.2,0.5,1];
ode(y0,t0,t,list(linear,A,u,B,omega))
plot(t,u);
