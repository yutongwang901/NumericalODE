%Method 1
%Backword Euler Method for general question given f(u,t)
function Un = euler_backward(f,a,b,U0,dt)
n=(b-a)/dt;
t=[a zeros(1,n)];
U=[U0 zeros(1,n)];
for i=1:n
t(i+1)=t(i)+dt;
Unew=U(i)+dt*(f(t(i),U(i)));
U(i+1)=U(i)+dt*f(t(i+1),Unew);
Un=U(i+1);
end
end