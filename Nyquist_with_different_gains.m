%----------------------NYQUIST PLOT------------------

%---------------Comparision for different values of Gain-------

clc;
close all;
clear all;
num=[1 3];
den=[1 8 7 0];
w=0.1:0.1:100;
[re1 ,im1 ,w]=nyquist(num,den,w);
[re2,im2,w]=nyquist(10*num,den,w);
[re3,im3,w]=nyquist(100*num,den,w);
plot(re1,im1,re2,im2,re3,im3)
v=[-3 3 -3 3];
axis(v)
grid on;
title('Comparison of Nyquist Daigram with different gains')
xlabel('Real Axis')
ylabel('Imaginary Axis')
text(-0.2,-2,'K=1')       %text(location_x,Location_y,text)
text(-1.5,-2.0,'K=10')    %location_x= where text has to be placed
text(-2,-1.5,'K=100')