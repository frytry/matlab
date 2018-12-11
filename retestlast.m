i=7;    %starting 
b1 = 9-i;   %ending
a1 = 4;
x = 0:0.01:10;
f = @(xi,a,b) a*rectpuls(xi,b); 
 plot(x,f((x-i)-((b1/2)),a1,b1),'b--');