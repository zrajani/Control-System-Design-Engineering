% Program Name: Second Order system in Control System Design

% Author: Zain Rajani

% Software Version: MATLAB R2013a and later 


% Initial Code
clc;
clear all;
close all;
%% General Parameters for a second order system
% Second order system is descibed using the formulae:
w=10;  % Omega value 
for l=[0 0.2 0.4 1.0 1.5];  % for loop usage and computing the numerator and denomintor values
num=[w.^2];
den=[1 2*l*w w.^2];
t=0:0.01:2;
step(num,den,t)
hold on;
end

%Plot Graphs for different values of zeta
xlabel('Time in sec')
xlabel('Time in seconds')
ylabel('Amplitude')
legend('Zeta=0','Zeta=0.2','Zeta=0.4','Zeta=1.0','Zeta=1.5');
title('Unit Step response curves of second order systems');
