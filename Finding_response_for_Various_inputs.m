%Finding step, ramp and parabolic input response for a closed loop
% G(s)= 3/s(s+4)

%%Initialize
clc;
clear all;
close all;
%% Enter the transfer function
g1=3;
g2=conv([1 0],[1,4]);

%% Generate the transfer function
g=tf(g1,g2);
h=1;
c=feedback(g,1);
step(c)
t=0:0.001:10;
u=t;
[y,x]=lsim(c,u,t);
figure; plot(t,y,t,u)
xlabel('Time in seconds')
ylabel('Amplitude')
title('Closed loop response for ramp input');
legend('Actual Signal','Desired Signal')
u1=0.5*t.^2;
[y1,x1]=lsim(c,u1,t); %plot the values depending on the history of u1 and t for c
figure;
plot(t,y1,u1);
xlabel('Time in seconds')
ylabel('Amplitude')
title('Closed loop response for parabolic input');
legend('Actual Signal','Desired Signal')
