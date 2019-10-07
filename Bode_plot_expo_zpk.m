%-----------------FREQUENCY DOMAIN ANALYSIS--------------

%----------------BODE PLOT (EXPONENTIAL)-----------------
%Initialize
clc;
clear all;
close all;
s=tf('s');
G=1*(exp(-0.2*s))/(s*(1+s)*(1+0.2*s));
bode(G)
grid on
margin(G)
[Gm, pm, wcp, wcg]=margin(G);
disp('Gain margin is')
disp(Gm)
disp('Phase Margin is')
disp(pm)
disp('Phase Crossover Frequency')
disp(wcp)
disp('Gain CrossOver frequency')
disp(wcg)

%---------------------END-------------------------------%

%%
%----------------BODE PLOT USING zpk--------------------

clc;
clear all;
close all;
G=zpk([-4],[1 2],10);
figure
margin(G)
grid on;
disp('Transfer function is');
G

%------------------------END---------------------------
