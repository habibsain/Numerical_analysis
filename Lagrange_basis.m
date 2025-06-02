function L_k = Lagrange_basis(x,x_nodes, k)
% This is a code for the Lagrange polynomial of degree k using given x-nodes
%
% Input:=
% x: a vector of x-values or a symbolic variable
% x_nodes: a vecto of size (n+1) storing the values of nodes x_k (k=0,1,2,..n)
% k: a integer in the range 0 to n
% Output:
% L_k : k_th (of degree n) Lagrange polynomial that is evaluated at x

n= length(x_nodes)-1 ;
 xk = x_nodes(k+1);
 
 L_k=1;
 
 for i=0:n
     if i==k 
         continue ;
     end
     prod = (x-x_nodes(i+1))/(xk-x_nodes(i+1)) ;
     L_k = L_k.*prod;
 end
 