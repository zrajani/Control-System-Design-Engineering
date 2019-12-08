% Find the rise,peak time and overshoot values 

clc;
clear all;
close all;
num1=10;
den1=conv([1 0],[1 2]);
g=tf(num1,den1)
h=1;
c=feedback(g,h);
[num den]=tfdata(c);
a=num{1};
b=den{1};
omegan=sqrt(b(3));
zeta=b(2)/(2*omegan);
Tsa=4/(zeta*omegan);  % For 2% error
Tpa=pi/(omegan*sqrt(1-zeta^2));
theta=atan((sqrt(1-zeta^2)/zeta));
Tra=(pi-theta)/(omegan*sqrt(1-zeta^2));
Mp=exp(-zeta*pi/sqrt(1-zeta^2))*100;
Tra5=3/(zeta*omegan);
fprintf('The value of Zeta is %f \n',zeta)
fprintf('The value of Omegan is %f \n',omegan)
fprintf('The value of Settling Time is %f \n',Tsa)
fprintf('The Peak time is %f \n',Tpa)
fprintf('The Rise Time is %f \n', Tra)
fprintf('The Peak over shoot is %f %  \n',Mp)
fprintf('\nThe Settling time for 5 error is %f %',Tra5)