function [p,numit] = Newt(g,p0,tol,maxit)
syms f(x)
f(x) = g;
Df = diff(f,x);
for i=1:maxit
    y = double(f(p0));
    y1 = double(Df(p0));
    p = p0 - (y/y1);
    if abs(p-p0) < tol
        break;
    end
    p0 = p;
end
numit = i;