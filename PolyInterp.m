% In this file we test polynomial interpolations
clear all;
 f =@(x) sin(x.*x) ; % define your test function
 %f =@(x) 1./(1+25*x.*x)
  %f =@(x) x.^2.*abs(x) ; % define your test function
  % f =@(x) x.*x.*cos(x) ; % define your test function
   %f =@(x) x.^2.*abs(x) ; % define your test function
 n=4;
 
 
 % Compute evaluation points (test points)
 a=-1; b=1.0;
 neval =200 ;
 xeval =linspace(a,b,neval);
 
% for equi-distant nodes--------------
x_nodes =linspace(a,b,n+1);

%----Chebyshev Nodes---------------------------
 for k=0:n
     tk=((2*n+1-2*k)*pi)/(2*n+2);
     x_nodes(k+1)=0.5*(b-a)*cos(tk)+0.5*(a+b);
 end


 y_nodes =f(x_nodes) ;
 
 
 
 % Call lagrange Interpolation for a data (x_nodes, y_nodes)
 % evaluated at all xeval
 
 polyInterp_at_xeval = zeros(size(xeval)) ;
 
 polyInterp_at_xeval = Lagrange_Interp(y_nodes, x_nodes, xeval);
 
 % Relative Error
 max_error =max(abs(polyInterp_at_xeval-f(xeval)));
 max_in_exact =max( abs(f(xeval)));
 Rel_Error = max_error/max_in_exact ;
 
 fprintf('Maximum error =%d , Relative error= %d. \n', Rel_Error, max_error );   
   plot(xeval,f(xeval),'b',xeval,polyInterp_at_xeval,'r',x_nodes,y_nodes,...
      'ko' ,'LineWidth',1)
%plot(xeval,polyInterp_at_xeval)
 % plot(xeval,f(xeval))
 legend('f(x)','P(x)','Nodes');
set (gca,'FontSize',10);
  
%----------------------------------------------------------------------
%------Lagrange Interpolation at Chebyshev Points---------------------
% ----Her our grid will not be uniform--------------------------------
%------- Take grid all the roots of Chebyshev polynomial--------------
%-----nth degree Chebyshev poly given by ----------------------------
%------------TN (x) = cos(N arccos(x)) for −1 ≤ x ≤ 1----------------
%----Now nodes are the roots of this polynimal--------------------------
%-------- xk =cos ((2k+1)π/2N) for k=0, 1, ..., N−1. --------------

%---compute Chebyshev nodes in [-1,1]---------------------

% for i=0:n
%     tk=((2*n+1-2*k)*pi)/(2*n+2);
%     x_nodes(k+1)=0.5*(b-a)cos(tk)+0.5*(a+b);
% end