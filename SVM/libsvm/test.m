%% This script is used to test whether the tool LibSVM works correctly or not.

fprintf('       Part I : Load the data and build the SVM model\n')
[heart_scale_lable, heart_scale_inst] = libsvmread('heart_scale');
model = svmtrain(heart_scale_lable, heart_scale_inst, '-g 0.1');
fprintf('The SVM model has been finished\n            Part II : estimate the result\n');
[heart_scale_lable, accuracy, dec_values] = svmpredict(heart_scale_lable,heart_scale_inst,model);


