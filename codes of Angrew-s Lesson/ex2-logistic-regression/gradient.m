function diffJ_theta= gradient(theta, X, Y)
m = length(Y);
% diffJ_theta = sum(((sigmoid(X*theta)-Y)'*X)')/m
diffJ_theta = X'*(sigmoid(X*theta)-Y)/m;