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
%% ej2
function ej2_exmc(t,x)

tspan=[0 100];
x0=[0; 0; 0; 0;];

[t,x]=ode45(@ej21,tspan,x0);

subplot(4,1,1);
plot(t,x(:,1));

subplot(4,1,2);
plot(t,x(:,2));

subplot(4,1,3);
plot(t,x(:,3));

subplot(4,1,4);
plot(t,x(:,4));

end

function Dx=ej21(t,x)

M=1;m=1;l=5;J=.5; g=9.8; u=1;
Dx=[x(3);
    x(4);
    ((u-m*l*sin(x(2))*x(4))/(m*l*cos(x(2)))+m*g*l*sin(x(2))/(J+m*l))/((M+m)/(m*l*cos(x(2)))-(m*l*cos(x(2)))/(J+m*l));
    ((-m*g*l*sin(x(2)))/(m*l*cos(x(2)))-(u-m*l*sin(x(2))*x(4)^2)/(M+m))/((m*l*cos(x(2))/(M+m))-(J+m*l)/m*l*cos(x(2)))];

end
