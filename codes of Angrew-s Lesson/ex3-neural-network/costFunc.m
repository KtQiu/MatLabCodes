function J_theta = costFunc(theta, X , Y, lembda)
m  = length(Y);
J_theta  = sum(-Y.*log(sigmoid(X*theta))-(1-Y).*log(1-sigmoid(X*theta)))/m + lembda/2/m*sum(theta'*theta);