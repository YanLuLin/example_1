 function [IT,CPU,RES,omega,gamma]=AOR(A,b,xk,omega,gamma,eta,maxit)
D=diag(diag(A));
L=-tril(A,-1);
U=-triu(A,1);
IT = 0;
tic;
while IT<maxit
    xk =(D-gamma*L)\(((1-omega)*D+(omega-gamma)*L+omega*U)*xk+omega*abs(xk)+omega*b);
    RES=norm(b+abs(xk)-A*xk)/norm(b);
    if RES<eta          
        IT = IT+1;
        break
    end
    IT = IT+1;
end
CPU=toc;
