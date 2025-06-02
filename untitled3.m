B = 5;
g =@(x) x + cos(x)*exp(-B*x^2);
%tol = 0.1^10;
%maxit = 30;
%p0 = 0;
[p,numit] = Newt(g,0.005,0.000001,30);
fprintf("%d\n",p);