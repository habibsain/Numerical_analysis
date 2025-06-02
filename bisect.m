function [c,err,yc]=bisect(f,a,b,delta)
% Program: (Bisection Method). To approximate a root of 
% the equation f (x) = 0 in the interval [a, b]. 
% Proceed with the method only if f (x) is continuous and 
% f (a) and f (b) have opposite signs.
%Input  - f is the function input as a string ’f’
%       - a and b are the left and right endpoints
%       - delta is the tolerance
%Output - c is the zero
% - yc=f(c)
%       - err is the error estimate for c
ya=feval(f,a);
yb=feval(f,b);
maxit =0; % maximum number of iterations
if (ya*yb>0)
    fprintf('f(a) and f(b) are not of the opposite sign' );
    return;
end

 
max1=1+round((log(b-a)-log(delta))/log(2));

fprintf('This method will require at most %d iterations to produce %e accurate computed solution.\n',max1,delta );
for k=1:max1
    c=(a+b)/2;
    yc=feval(f,c);
    if yc==0
a=c;
       b=c;
elseif yb*yc>0
b=c;
yb=yc; 
    else
a=c;
ya=yc;
    end
   if b-a < delta, 
       maxit=k;
    break,end
end
fprintf('desired root is obtained in %d iterations. \n',maxit );   
c=(a+b)/2;
err=abs(b-a);
yc=feval(f,c);