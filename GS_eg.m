function [IT,CPU,RES]=GS_eg(m)
n=m^2;
eta=1.0e-6;
maxit=300;
[A,b,xk] = eg_1(m);
[IT,CPU,RES]=GS(n,A,b,xk,eta,maxit);
