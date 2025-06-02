function A = Int_simpson(f,a,b,n)

%The trapezoidal rule gives the following value
if n==1
    A = (f(a)+f(b))*(b-a)/2;
elseif n==2
    A = (f(a)+f(b)+4*f((a+b)/2))*(b-a)/6;
elseif n==3
    A = (f(a)+f(b)+3*f((2*a+b)/3)+3*f((2*b+a)/3))*(b-a)/8;
elseif n==4
    A = (7*f(a)+7*f(b)+32*f((3*a+b)/4)+12*f((b+a)/2)+32*f((3*b+a)/4))*(b-a)/90;
end