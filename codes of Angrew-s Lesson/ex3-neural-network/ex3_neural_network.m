%% clear the data and window
clear ;close all; clc;
%% init the data  ===> the first layer is 400+1(20*20 +1); the second layer(hidden layer) is 25+1; the last layer is 10 (1-10, and 10 represent '0')   
data = load('ex3data1.mat');  % matrix X and Y
weights = load('ex3weights.mat');  % theta1 and theta2  
%% 
 