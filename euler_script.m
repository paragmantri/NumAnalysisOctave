clc
clear all
close all
f=@(t,y) (1-2*t*y)/y^2

t0=0;
y0=2;

h=0.1;
T=2;
N=ceil((T-t0)/h);

[t,y]=euler(f,t0,y0,h,N)

plot(t,y)