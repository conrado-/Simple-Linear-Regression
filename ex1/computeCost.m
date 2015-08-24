function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% Multiplying a matrix of n row by a vector of n columns is equivalent to 
% constructing polynomial expressions where the elements in the vector are 
% the coeficient of the variables (which are evaluated to the values in the matrix). 

% Evaluate the hypothesis parameters theta against the training values to get the current predictions

hTheta = X * theta;

% Find the errors by substracting the predictions from the measured values (labels)

errors = hTheta - y;

squaredErrors = errors .^2;

sumOfSquaredErrors = sum(squaredErrors);

averageError = sumOfSquaredErrors / m;

cost = averageError/2;

J = cost;

% =========================================================================

end
