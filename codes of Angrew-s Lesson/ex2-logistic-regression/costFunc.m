function J_theta = costFunc(theta, X , Y)
m  = length(Y);
J_theta  = sum(-Y.*log(sigmoid(X*theta))-(1-Y).*log(1-sigmoid(X*theta)))/m;