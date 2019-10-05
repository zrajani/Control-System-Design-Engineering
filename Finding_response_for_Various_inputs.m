%Finding step, ramp and parabolic input response for a closed loop
% G(s)= 3/s(s+4)

%%Initialize
clc;
clear all;
close all;

% Enter the transfer function
g1=3;
g2=conv([1 0],[1,4]);

% Generate the transfer function
g=tf(g1,g2);
h=1;

% Feedback Generation in the system
c=feedback(g,1);

% Using CSE Toolbox step function to input step function
step(c)
t=0:0.001:10;
u=t;
[y,x]=lsim(c,u,t);

% Plot the function 
figure; plot(t,y,t,u)   % Plotting Function on the same plot
xlabel('Time in seconds')  % Label the x axis
ylabel('Amplitude')  % Label the y axis
title('Closed loop response for ramp input');  % Graph Title
legend('Actual Signal','Desired Signal')   % Label both the graphs showing 
u1=0.5*t.^2;   
[y1,x1]=lsim(c,u1,t); %plot the values depending on the history of u1 and t for c
figure;    % Create a figure for plotting
plot(t,y1,u1);
xlabel('Time in seconds')  % label the x axis
ylabel('Amplitude')  % Label the y axis
title('Closed loop response for parabolic input');  % Label the graph
legend('Actual Signal','Desired Signal')  % Label the lines in the graph
