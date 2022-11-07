function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    
iterations=m;
iteration=m;
temp=0;
temp1=0;
i=1;
while(iterations>0)
  t=[X(i,1);X(i,2)];
  temp+=((theta'*t)-y(i))*X(i,1);
  iterations-=1;
  i++;
endwhile
J=(alpha/m)*temp;

i1=1;
while(iteration>0)
  t=[X(i1,1);X(i1,2)];
  temp1+=(((theta'*t)-y(i1))*X(i1,2));
  iteration-=1;
  i1++;
endwhile
J1=(alpha/m)*temp1;
temp0=theta(1)-J;
temp1=theta(2)-J1;
theta(1)=temp0;
theta(2)=temp1;

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
