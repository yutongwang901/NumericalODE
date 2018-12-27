function [x,Number_iter]=fixed_point_method(g,x0,Tol)
Number_iter=0;
while 1
    x=g(x0);
    Number_iter=Number_iter+1;
    if abs(x-x0)<Tol
        break
    end
    x0=x;
end