function [X] = featureNormalize(X)
temp = X(:,[2:end]);
temp = temp - ones(size(temp,1),1)*mean(temp);
X = [X(:,1),temp]