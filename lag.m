function L_k = lag(nodes,x)
%We want lagrange basis of degree n(size of nodes vector) for certain k less than number of nodes
%with n+1 nodes we can generate n degree polynomial using n+1 lagrange
%Inputs:
%nodes-> the n+1 nodes at which function value is evaluated
%f-> the function to be represented with polynomial
%k-> index between 0 and n
%x-> point at which lagrange polynomial is evaluated
%Output:
%L_k -> kth lagrange polynomial evaluated at x

%n = length(nodes);
%p = nodes(k);
%nodes(k)=[];
%L_k = prod(x - nodes)/prod(p - nodes);
L_k = zeros(size(nodes));

for k = 1:length(nodes)
    xk = nodes(k);
    nodes_k = nodes;
    nodes_k(k)=[];
    L_k(k) = prod(x-nodes_k)/prod(xk-nodes_k);


end