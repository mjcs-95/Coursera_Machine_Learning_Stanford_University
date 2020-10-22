data = csvread('ex1data2.txt');
X = data(:, 1:2);
y = data(:, 3);
m = length(y);
% Add intercept term to X
X = [ones(m, 1) X];
theta = normalEqn(X, y)
