function Un=Numerical_method(f,df,a,b,Tol,U0,dt)
%def variable
n=(b-a)/dt;
t=[a zeros(1,n)];
U=[U0 zeros(1,n)];
n_iter=0;
%Bisection Method
for i=1:n
    c=(a+b)/2;
    if f(a,t(i))*f(c,t(i))<0
        b=c;
    else
        a=c;
    end
    n_iter=n_iter+1;
    if (b-a)<Tol
        break
    end
end
%Newton's Method
Number_iter=0;
for i=1:n
    if df(c,t(i))<0
        disp('not converge');
    else
        while 1
            x=U0-f(U0,t(i))/df(U0,t(i));
            Number_iter=Number_iter+1;
            if abs(x-U0)<Tol
                break
            end
            U0=x;
        end
    end
end
%Backward Euler
for i=1:n
    t(i+1)=t(i)+dt;
    Unew=U(i)+dt*(f(t(i),U(i)));
    U(i+1)=U(i)+dt*f(t(i+1),Unew);
    Un=U(i+1);
end
end
