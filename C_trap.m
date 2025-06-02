function X = C_trap(f,a,b,n)

%Approximate the integral using composite Trapezoidal rule
%Input:
%function, initial point, end point,no of subintervals 
%Output:
%Approximate of the integral

h = (b-a)/n;

X0 = f(a) + f(b);
X1 = 0; %summation of f(x_i)

for i=1:n-1
    x = a + i*h;
    X1 = X1 + f(x);
end

X = h*(X0 + 2*X1)/2;


end