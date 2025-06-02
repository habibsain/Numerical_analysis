% This is to illustrate of plot function in Matlab
% Here we plot two function, y=x, and y=3^{-x}

x=[0.0 : .10 : 1] 
y =3.^(-x)

plot (x,y) ;
hold on % will hold the first picture in the same window

y=x;
plot (x,y)
axis equal;

