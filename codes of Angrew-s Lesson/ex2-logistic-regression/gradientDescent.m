function theta = gradientDescent(theta, X, Y, alpha , iterationNum)
for i =  1: iterationNum
    theta = theta - alpha*gradient(theta, X, Y);
    cost = costFunc(theta, X, Y);
    fprintf('iteration | %d  J_theta = %f\n' ,i,cost);
end
end

%% 梯度下降法感觉不是很好用，因为alpha的选择是一个问题
%    会出现cost上下摆动，就是没有一直的下降
%    另一个问题     不一定是全局最小，有可能只是局部最小 在ex2的pdf里面写了用的是一个函数fminunc
%     =.=  难受 ...  明儿再看