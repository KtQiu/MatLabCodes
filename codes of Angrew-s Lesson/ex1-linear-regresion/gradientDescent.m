function [theta] = gradientDescent(theta, alpha, X, Y, iterationNum)
m = length(Y);
for i = 1:iterationNum
    theta = theta - alpha/m*((X*theta-Y)'*X)';
    cost = costFunc(theta,X,Y);
    fprintf('iteration = %d   |  J_theta = %2f \n',i, cost);
end
end