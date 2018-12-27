function [x,Number_iter]=Newton(f,df,x0,Tol)
Number_iter=0;
while 1
    x=x0-f(x0)/df(x0);
    Number_iter=Number_iter+1;
    if abs(x-x0)<Tol
        break
    end
    x0=x;
end