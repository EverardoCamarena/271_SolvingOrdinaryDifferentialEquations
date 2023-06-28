f = @(x) x*cos(x)-(sin(x)/x); 

x0 = pi/8; % The point at which the derivative of function need to be evaluated

step = [0.2 0.02 0.002 0.0002 0.00002 0.000002 0.0000002]; % The step size used in the finite difference methods

fprintf(" Method -------------- F'(pi/8) -------------- Absolute Error\n");

for j = 1:7
    h = step(j); 
    FD = (f(x0+h)-f(x0))/h; % The derivative of F(x) at x = x0 using forward difference
    BD = (f(x0)-f(x0-h))/h; % The derivative of F(x) at x = x0 using backward difference
    CD = (f(x0+h)-f(x0-h))/(2*h); % The derivative of F(x) at x = x0 using central difference
    dy = cos(x0)-x0*sin(x0)-((x0*cos(x0)-(sin(x0)))/x0.^2);
    FD_err = abs(FD-dy); % absolute error in FD fornula
    BD_err = abs(BD-dy); % absolute error in BD fornula
    CD_err = abs(CD-dy); % absolute error in CD fornula
    fprintf('Step Size: %20.7f\n', h)
    fprintf('Forward Difference  %10.6f %28d \n', FD, FD_err);
    fprintf('Backward Difference  %9.6f %28d \n', BD, BD_err);
    fprintf('Central Difference  %10.6f %28d \n\n', CD, CD_err);

end