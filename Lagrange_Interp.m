function [polyInterp] = Lagrange_Interp(fdata, x_nodes, eval_nodes)
% This is a code for Lagrange polynomial using Lagrange Basis 
% Input:-
% fdata:- a vector of function values at (n+1) nodes
% x_nodes:- a vecto of size (n+1) storing the values of nodes x_k (k=0,1,2,..n)
% eval_nodes: a vector of test points 
% Output:- 
% PX : - polynomail approximation of f at the all evaluation points

n= length(fdata)-1;
polyInterp = zeros(size(eval_nodes)) ;

for k=0:n 
    yk=fdata(k+1);
    L_k =Lagrange_basis(eval_nodes, x_nodes,k) ;
    polyInterp =polyInterp +yk*L_k ;
end
