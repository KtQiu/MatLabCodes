function J_theta = costFunc(theta,X,Y)
J_theta = 0.5/length(Y)*sum((X*theta - Y).^2);
end