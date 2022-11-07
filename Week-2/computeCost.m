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


iterations=m;
temp=0;
i=1;
while(iterations>0)
  t=[X(i,1);X(i,2)];
  h=(theta'*t);
  temp+=(h-y(i))^2;
  iterations-=1;
  i++;
endwhile
J=(1/(2*m))*temp;
% =========================================================================

end
