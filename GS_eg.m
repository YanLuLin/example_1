function [IT,CPU,RES]=GS_eg(m)
eta=1.0e-6;
maxit=300;
[A,b,xk] = eg_1(m);
[IT,CPU,RES]=GS(A,b,xk,eta,maxit);