% ----------PROGRAM FOR ROOT LOCUS----------
%
%
%
%In the given transfer function we have plotted the root locus with the
%value of K=1 if the student requires he may check the with various values
%of K 

clc;
clear all;
close all;
c=tf(1,[1 4 13 0])
rlocus(c)
axis equal;
axis([-6 6 -10 10])

%%
%---------------PROGRAM FOR ROOTLOCUS-------------
%
%
%
clc;
clear all;
close all;
a=tf(1,[1 6 9])
b=poly([0 0])
c=tf(1,b)
x=tf([1 4 5],1)
d=a*c*x
rlocus(d)
axis equal
axis([-10 6 -6 6])