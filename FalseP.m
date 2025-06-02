function [p,numit] = FalseP(g,p0,p1,tol,maxit)
syms f(x)
f(x) = g;
%Df = diff(f,x);
q0 = f(p0);
q1 = f(p1);
%fprintf("The derivative at pi/4 is : %d\n",Df(p0));
for i=1:maxit
    %fprintf("the derivative at p0 is: %d\n", Df(p0));
    %fprintf("the function value at %d is: %d\n", p0, f(p0));
    p = p1-q1*(p1-p0)/(q1-q0);
    if abs(p-p1) < tol
        break;
    end
    q = f(p);
    if q*q1 < 0
        p0 = p1;
        q0 = q1;
    end

    p1 = p;
    q1 = q;
end
p = double(p);
numit = i;
