function [A,b,xk] = eg_1(m)
n=m^2;
d=ones(n,1);
A=spdiags([-d 4*d -d],[-1 0 1],n,n);
x_star=1/2*(3*ones(n,1)+(-1).^(1:n)');
b=A*x_star-abs(x_star);
xk = sparse(zeros(n,1));
end
