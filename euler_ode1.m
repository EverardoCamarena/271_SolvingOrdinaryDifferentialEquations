function [x, y] = euler_ode1(f, x_start, x_end, y_start, N)

x(1) = x_start;
y(1) = y_start;

step = (x_end - x_end)/N;

for i = 1:N-1
    y(i+1)=y(i)+step*f(x(i),y(i));
    x(i+1)=i*step;
end
end