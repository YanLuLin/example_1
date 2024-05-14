 function [IT,CPU,RES,xk]=SOR(n,A,b,xk,omega,eta,maxit)
D=spdiags(diag(A),0,n,n);
L=-tril(A,-1);
U=-triu(A,1);
IT = 0;
tic;
while IT<maxit
    xk =((1/omega)*D-L)\((((1/omega)-1)*D+U)*xk+abs(xk)+b);
    RES=norm(b+abs(xk)-A*xk)/norm(b);
    if RES<eta         
        IT = IT+1;
        break
    end
    IT = IT+1;
end
CPU=toc;
