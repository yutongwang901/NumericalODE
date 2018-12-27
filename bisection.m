function [c,n_iter] = bisection(fun,a,b,Tol)
n_iter=0;
while 1
    c=(a+b)/2;
    if fun(a)*fun(c)<0
        b=c;
    else
        a=c;
    end
    n_iter=n_iter+1;
    if (b-a)<Tol
        break
    end
end

