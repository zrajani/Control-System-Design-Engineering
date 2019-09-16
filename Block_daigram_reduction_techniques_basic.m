%-------------Block Daigram Reduction-------------------------

%-----Transfer function for various condition-----------------

clc;
clear all;
close all;
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