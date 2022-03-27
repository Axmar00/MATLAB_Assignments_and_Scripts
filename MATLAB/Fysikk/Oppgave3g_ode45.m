%Oppgave 3g i oblig 1 i DAPE2101
clc; clear; %Fjerner alle lagrede variabler
m = 2.0;   %Massen m = 2,0kg
k = 350;   %Fjærkonstanten k = 350N/m
x0 = 0.070; %x_0 = x(t_0) = 0,070m
v0 = 0; %v_0 = v(t_0) = 0
dt = 0.05;   %Delta t 

xv = [ x0 v0];
tint = 0:dt:2;  %Tidsintervallet fra t = 0 til t = 2 med dt = 0,05

