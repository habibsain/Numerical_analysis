function P = lag_p(eval_nodes,f,nodes)
%eval_nodes: ponts where aproximate values to be evaluated
%P: the approx function values at eval_nodes

n = length(nodes)-1;
fdata = f(nodes);
P = zeros(size(eval_nodes));
for k=1:length(eval_nodes)
    L_k = lag(nodes,eval_nodes(k));
    P_vec = fdata.*L_k;
    P(k) = sum(P_vec);

end