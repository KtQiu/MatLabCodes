function theta = gradientDescent(theta, X, Y, alpha , iterationNum)
for i =  1: iterationNum
    theta = theta - alpha*gradient(theta, X, Y);
    cost = costFunc(theta, X, Y);
    fprintf('iteration | %d  J_theta = %f\n' ,i,cost);
end
end

%% �ݶ��½����о����Ǻܺ��ã���Ϊalpha��ѡ����һ������
%    �����cost���°ڶ�������û��һֱ���½�
%    ��һ������     ��һ����ȫ����С���п���ֻ�Ǿֲ���С ��ex2��pdf����д���õ���һ������fminunc
%     =.=  ���� ...  �����ٿ�