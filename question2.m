%%Question2%%

%%=====Code for NewtonsMethod======%%
%%
%function [p,numit] = Newt(g,p0,tol,maxit)
%syms f(x)
%f(x) = g;
%Df = diff(f,x);
%for i=1:maxit
%    y = double(f(p0));
%    y1 = double(Df(p0));
%    p = p0 - (y/y1);
%    if abs(p-p0) < tol
%        break;
%    end
%    p0 = p;
%end
%numit = i;
%%
Z = zeros(1,6);
I = zeros(1,6);
B = [1 5 10 25 50 100];
p0 = 0;
tol = 0.1^12;
maxit = 20;
for i=1:size(B)
    g =@(x) x + cos(x)*exp(-B(i)*x^2);
    [p,numit] = Newt(g,p0,tol,maxit);
    Z(i) = p;
    I(i) = numit;
end
table(B,Z,I)