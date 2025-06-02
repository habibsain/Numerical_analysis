function [numit,p,err,P] =My_fixpt(g,pzero,tol,maxit)
% Input - g is the iteration function input
%       - pzero is the initial guess for the fixed point 
%       - tol is the tolrence
%       - maxit is  the maximum number of iteraions
% Output- numit is the number of iterations that were carried out
%       - p is the approximation to the fixed point
%       - err is the error in the approximation
%       - P contains the sequence pn

% format long e ; see the matlab format command
P(1) =pzero ;
eps = 1.0e-12;

for k=2:maxit
    P(k)=feval(g,P(k-1)) ;
    err = abs (P(k)-P(k-1)) ;
    relerr = err/(abs(P(k)+eps)) ;
    p =P(k);
    if (err<tol) | (relerr < tol ), break;
    end
end
numit = k;
if k==maxit 
    disp('number of maximum iterations exceeded')
else
    fprintf('Five digit accurate approximaion of fix point computed in %d iterations. \n',k );   
end
P=P';

% Take g =@(x) x -x^3 -4*x^2 +10 ; ( will get divergent sequence)
% Take g =@(x) (10/x -4*x)^(0.5); (became undefined, square root of -ve number involved)
 % Take g =@(x) 0.5*(10 -x^3)^(0.5);
 
 % Take g =@(x) (10/(4.0+x))^(0.5);
 % Take g =@(x) (x-(x^3+4*x^2-10)/(3.0*x^2+8*x));

