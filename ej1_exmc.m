function ej1_exmc
t=[0:.001:100];
x0=[0;-1;-1];

[t,x]=ode45(@ej11,t,x0);

plot3(x(:,1),x(:,2),x(:,3));
end

function Dx=ej11(t,x)
a=10; b=28; c=8/3;

Dx=[a*(x(2)-x(1));
    x(1)*(b-x(3))-x(2); 
    x(1)*x(2)-c*x(3)];

end
