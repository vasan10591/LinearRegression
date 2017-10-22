function output = htheta(theta,x)
output = x*theta;
endfunction

function output = discrepancy(X,y,theta)
output = htheta(theta,X)-y;
endfunction

function output = derivative(X,y,theta)
output = X’ * discrepancy(X,y,theta);
endfunction

function thetaTrained = train(X,y,theta,alpha,iters)
X=[ones(rows(X),1) X];
m = rows(X);
for i=1:iters
theta-=(alpha/m)*derivative(X,y,theta);
endfor
thetaTrained = theta;
endfunction