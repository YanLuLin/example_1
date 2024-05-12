function [IT,CPU,RES,xk]=GS(A,b,xk,eta,maxit)
D=diag(diag(A));
L=-tril(A,-1);
U=-triu(A,1);
IT = 0;
tic;
while IT<maxit
    xk =(D-L)\(U*xk+abs(xk)+b);
    RES=norm(b+abs(xk)-A*xk)/norm(b);
    if RES<eta          
        IT = IT+1;
        break
    end
    IT = IT+1;
end
CPU=toc;