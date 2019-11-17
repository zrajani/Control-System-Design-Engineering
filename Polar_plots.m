clc;
close all;
clear all;
s=tf('s');
disp('The given transfer function is, ');
Gs=1/(s*((s+1)^2))

[num,den]=tfdata(Gs);         % Determine the co-efficients

w=0.4:0.01:4;

[re,im,w]=nyquist(num,den,w);  %get the real and imaginary parts

[GM,PM]=margin(num,den);       %Determine the phase and gain margin

disp('Gain Margin'); GM

disp('Phase margin in deg,'); PM

figure;


z=re+i*im;    %Convert into rectangular co-ordinates


plot(z)
r=abs(z);
                               %COnvert to polar coordinates 
theta=angle(z);

polar(theta,r,'k')             % Draw the polar plot