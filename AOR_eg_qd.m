function [omega,gamma,IT,cputime,res]=AOR_eg_qd(m,maxit,omega,gamma)
n=m^2;
tol=1.0e-6;
[A,b,xk] = eg_1(m);
[IT,cputime,res,omega,gamma]=AOR(n,A,b,xk,omega,gamma,tol,maxit); 
