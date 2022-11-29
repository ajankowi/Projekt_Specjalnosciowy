clear all;
close all;

R = 10;
wd = 1;

vd = R*wd;


k1 = 2;
k2 = 20;

kd = 20;

Mp = 97; %Kg
Mk = 5;  %Kg

Ip = 6.609; %kg*m^2

Rk = 0.075; %m
L = 0.3;    %m

Mc = Mp + 2 * Mk; %kg

Izz = (1/4) * Mk * L^2;             %kg*m^2
Ic = Ip + 2 * Izz + 2 * Mk * L^2;   %kg*m^2
Ixx = (1/2) * Mk * Rk^2;            %kg*m^2


M = [Mc+(2*Ixx/Rk^2),0;0,Ic+(2*Ixx*L^2/Rk^2)];

M_1 = M^(-1);

inv(M);

B = [1/Rk,1/Rk;L/Rk,-L/Rk];

B_1 = B^(-1);





