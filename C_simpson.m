function X = C_simpson(f,a,b,n)

%Approximate the integral using composite Simpson's rule
%Input:
%function, initial point, end point,no of subintervals 
%Output:
%Approximate of the integral

h = (b-a)/n;

X0 = f(a) + f(b);
X1 = 0; %summation of f(x_2i-1)
X2 = 0; %summation of f(x_2i)

for i=1:n-1
    x = a + i*h;
    if rem(i,2) == 0
        X2 = X2 + f(x);
    else
        X1 = X1 + f(x);
    end
end

X = h*(X0 + 2*X2 + 4*X1)/3;


end