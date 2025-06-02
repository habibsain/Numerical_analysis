function [numit,c,FP] = bisect1(g,a,b,tol,maxit)
%we take FA and FB as the end point of the desired set that has zero
%i = 1;
FA = feval(g,a);

for i=1:maxit
    c=a+(b-a)/2;
    FP = feval(g,c);
    if (FP == 0 || (b-a)/2 < tol)
        break;
    end
    if (FA*FP > 0)
        a = c;
        FA = FP;
    else
        b = c;
    end
end
numit = i;

