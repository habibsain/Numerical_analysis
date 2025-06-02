function g = diff3p(f,x0,h)
%Implemetation of three point formula of differentiation
%  f =@(x) sin(x)
g = (-3*f(x0)/2 + 2*f(x0+h) - f(x0+2*h)/2)/h;

end