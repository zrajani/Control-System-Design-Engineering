%------------Polar plots----------------------------

%------Drawing for given frequency range------------

%----Program to draw polar plot for 2 different frequencies-----

clear all;
close all;
clc;
s=tf('s')
disp('The given transfer function is, ');
Gs=1/(s*(1+0.2*s)*(1+0.05*s))

%Determine co-efficients of G(s)

[num,den]=tfdata(Gs);

w1=0.6:0.001:8;   %Specify frequency range 1

%Determine the real and imaginary parts
[re1, im1,w1]=nyquist(num,den,w1);

%onvert rectangular to polar coordinates

z1=re1+i*im1;
r1=abs(z1);
theta1=angle(z1);

%Draw the polar plot
subplot(1,2,1);
polar(theta1,r1,'k');
title('Frequency Range for 0.6 rad/sec to 8 rad/sec');

w2=5:0.001:18;
[re2 im2 w2]=nyquist(num,den,w2);
z2=re2+i*im2;
r2=abs(z2);
theta2=angle(z2);
subplot(1,2,2);
polar(theta2,r2,'k');
title('Frequency Range for 5 rad/sec to 18 rad/sec');


%% Proceed to this block if want to plot normal graph 
figure
plot(re2,im2)   %To plot on the normal graph sheet
grid on;

%------ End----------
