function X = C_mid(f,a,b,n)

%Approximate the integral using composite Midpoint rule
%Input:
%function, initial point, end point,no of subintervals 
%Output:
%Approximate of the integral

h = (b-a)/(n+2);

X = 0; %summation of f(x_2i)

for i=0:n
    x = a + (i+1)*h;
    if rem(i,2) == 0
        X = X + f(x);
    end
end

X = 2*h*X;


end