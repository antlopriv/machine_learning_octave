function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

h = X*theta;

% regularize theta by removing first value theta(0)
theta_reg = [0;theta(2:end, :);];

% regularized linear regression cost function
J = (1/(2*m))*sum((h-y).^2)+(lambda/(2*m))*theta_reg'*theta_reg;

% regularized linear regression gradient
grad = (1/m)*(X'*(h-y)+lambda*theta_reg);






% =========================================================================

grad = grad(:);

end
