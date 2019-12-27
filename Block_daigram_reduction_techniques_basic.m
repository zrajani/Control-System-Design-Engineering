% Code Abstract: Block Daigram Reduction using matlab (Simple Reduction)
% Author: Zain Rajani
% Creation Date: November 15, 2018
% Code reference: Control system engineering, Nagoor Kani (Book)

%-------------Block Daigram Reduction-------------------------

%-----Transfer function for various condition-----------------

clc;
clear all;
close all;

% Eneter the value/ co-efficient of numerator and denominator present in the transfer function
num1=4;
den1=[1 2 1];
num2=7;
den2=[1 5];

%series connection

[num,den]=series(num1,den1,num2,den2);
disp('Series Connection')
tf(num,den)

%Parallel Connection

[num,den]=parallel(num1,den1,num2,den2);
disp('Parallel Connection')
tf(num,den)

%Feedback Connection

[num,den]=feedback(num1,den1,num2,den2);
disp('Feedback Connection')
tf(num,den)
