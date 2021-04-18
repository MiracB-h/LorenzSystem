clc; clear all;
sigma=10; rho=28; beta=8/3;
x0=0.01; y0=0.01; z0=0.01;
sp=[sigma;rho;beta];
iv=[x0;y0;z0];
dt=0.01;
trange=0:dt:50;
opt=odeset('RelTol',1e-20);
[t x]=ode45(@(t,x)f(t,x,sp),trange,iv,opt);
figure(1)
plot3(x(:,1),x(:,2),x(:,3),'yellow')
set(gca,'Color','black')
view(-140,-6)
figure(2)
subplot(3,2,2)
plot(t,x(:,1),'black','LineWidth',2)
xlabel('Time (s)')
ylabel('x(t)')
title('Time vs. X Signal of Lorenz System')
grid on
subplot(3,2,4)
plot(t,x(:,2),'red','LineWidth',2)
xlabel('Time (s)')
ylabel('y(t)')
title('Time vs. Y Signal of Lorenz System')
grid on
subplot(3,2,6)
plot(t,x(:,3),'blue','LineWidth',2)
xlabel('Time (s)')
ylabel('z(t)')
title('Time vs. Z Signal of Lorenz System')
grid on
subplot(3,2,1)
plot(x(:,1),x(:,2),'black')
xlabel('x(t)')
ylabel('y(t)')
title('XY Phase of the System')
subplot(3,2,3)
plot(x(:,1),x(:,3),'red')
xlabel('x(t)')
ylabel('z(t)')
title('XZ Phase of the System')
subplot(3,2,5)
plot(x(:,2),x(:,3),'blue')
xlabel('y(t)')
ylabel('z(t)')
title('YZ Phase of the System')