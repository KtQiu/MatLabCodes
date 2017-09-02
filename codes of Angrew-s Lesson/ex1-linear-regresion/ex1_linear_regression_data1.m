%%
%init windows and clear out data
clear ;close all ;clc
%%
%read and init data
data1 = csvread('ex1data1.txt');
x1 = data1(:,1);
Y1 = data1(:,2);
m = length(Y1);
X1 = [ones(m,1), x1];
%%
%plot data(cause 2-dimension data)
% fprintf(' ### Plot the Data (2-dimension) \n\n');
plot(x1,Y1, 'rx' )
hold on
ylabel('y','Fontsize',20);
xlabel('x','Fontsize',20);
% fprintf('Press #Enter# to continue... \n\n');
% pause;
%%
% test : calculate J_theta
theta1 = zeros(size(X1,2),1);
cost = costFunc(theta1,X1,Y1);
fprintf('When thetas are all 0, then the value of J_theta is %f \n ', cost);
% fprintf('Press #Enter# to continue... \n\n');
%%
% using gradient descent to minize J_theta
alpha = 0.01;
iterationNum = 2000;
theta1 = gradientDescent(theta1, alpha, X1, Y1, iterationNum);
predict = X1*theta1;
plot(x1,predict,'g');


