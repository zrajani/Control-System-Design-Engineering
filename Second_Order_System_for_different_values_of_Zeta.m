clc;
clear all;
close all;
w=10;
for l=[0 0.2 0.4 1.0 1.5];
num=[w.^2];
den=[1 2*l*w w.^2];
t=0:0.01:2;
step(num,den,t)
hold on;
end
xlabel('Time in sec')
xlabel('Time in seconds')
ylabel('Amplitude')
legend('Zeta=0','Zeta=0.2','Zeta=0.4','Zeta=1.0','Zeta=1.5');
title('Unit Step response curves of second order systems');