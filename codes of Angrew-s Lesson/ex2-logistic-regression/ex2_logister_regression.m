%% init windows
clear ; close all; clc;
%% load data
data =  load('ex2data1.txt');
datax = data(:,[1:end-1]);
Y  = data(:,end);
m = length(Y);
X = [ones(m,1), datax];
theta = zeros(size(X,2),1);
%%
