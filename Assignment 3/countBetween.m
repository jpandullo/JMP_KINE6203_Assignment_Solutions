function countBetween(a,b)
% Function for Problem 8 
% Joshua Pandullo Monday October 20th 
%
% This function takes two input values as the variables 'a', and 'b'. It then 
% determines which of the values is lower and higher, and utilizes a for
% loop to determine all numbers counted between the low and high number. 
%
% This function allows for non integer numbers but it will count up by 
% increments of 1 from the lower value to the higher value.
if ~isnumeric(a) || ~isnumeric(b)
        error('Inputs must be numeric values.');
end
% This ensures that each of the inputs are numeric values.

    low = min(a,b);
    % This creates a variable called low which is the minimum value of the 
    % two inputs. Utilizing the built in min function to take the minimum 
    % of the two values input.
    high = max(a,b);
    % This creates a variable called high which is the maximum value of the 
    % two inputs.
    % Utilizing the built in max function to take the maximum value of the
    % two inputs.
    for n = low:high
    disp(n)
    % This for loop takes the values from low to high and displays each 
    % value until the high number has been reached.
    end

end