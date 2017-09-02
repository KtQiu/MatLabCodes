%% init windows and clear out data
clear ;close all ;clc
%% read and init data

data2 = csvread('ex1data2.txt');
x2 = data2(:,1:end-1);
Y2 = data2(:,end);
m = length(Y2);
X2 = [ones(m,1), x2];
%% Normalize the data(feature) 
X2 = featureNormalize(X2);

%% 



%%
% test : calculate J_theta
theta2 = zeros(size(X2,2),1);
cost = costFunc(theta2,X2,Y2);
fprintf('When thetas are all 0, then the value of J_theta is %f \n ', cost);
% fprintf('Press #Enter# to continue... \n\n');
%%
% using gradient descent to minize J_theta
% alpha = 0.01;
% iterationNum = 2000;
% theta1 = gradientDescent(theta1, alpha, X1, Y1, iterationNum);
% predict = X1*theta1;
% plot(x1,predict,'g');
