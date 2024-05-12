function [omega,IT,CPU,RES]=SOR_eg_qd(m,maxit,omega)
eta=1.0e-6;
[A,b,xk] = eg_1(m);
[IT,CPU,RES]=SOR(A,b,xk,omega,eta,maxit);
