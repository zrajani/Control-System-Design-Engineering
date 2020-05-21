%---------------Frequency Response Analysis--------

%----------------BODE PLOT-------------------------
%Initialize
clc;
clear all;
close all;
s=tf('s');
GH=10/(s*(1+0.4*s)*(1+0.1*s));
%Alternate way to declare transfer function
%num=10*[0 0 0];
%den= conv(conv([1 0],[0.4 1]),[0.1 1]);
%=tf(num,den);
bode(GH)                      %Main function in the code
grid on
[Gm,Pm,wcp,wcg]=margin(GH);   %To find the margin values 
disp('Gain Margin is') 
disp(Gm)
fprintf('Phase Margin is %f \n',Pm)
disp('Phase crossover frequency')
disp(wcp)
disp('Gain Crossover Frequency') 
disp(wcg)
margin(GH)
grid on
%--------------END OF THE CODE----------------------
