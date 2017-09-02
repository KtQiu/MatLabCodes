function diffJ_theta= gradient(theta, X, Y, lembda)
m = length(Y);
diffJ_theta = X'*(sigmoid(X*theta)-Y)/m+lembda/m*theta;