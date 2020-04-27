% Program Name: Nyquist Plot

% Author: Zain Rajani

%------------------FREQUENCY DOMAIN ANALYSIS----------------

%-----------------NYQUIST PLOT------------------------------

clc;
clear all;
close all;
s=tf('s');
K=240;               %___Assume the value of gain and try___________
%GH=(K*(s-6))/((s+2)^2)
GH=K/(s*(s+2)*(s+10))
nyquist(GH,'k')
axis([-4 0.5 -2 2]);
%grid on;

%--------------END-------------------------------------------
