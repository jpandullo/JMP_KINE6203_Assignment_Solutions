function [sumValue,diffValue,prodValue,maxValue] = simpleMath(value1,value2)
% Function for Problem 2 
% Joshua Pandullo Monday October 20th 
%
%
% This function takes two inputs from the variables value1, and value 2 and
% then completes various simple math calculations. 
% 
% In the order of outputs first is the sum of the two numbers, second
% the difference of value2 from value 1, third the product of both 
% values, and last the max of the two values.

if ~isnumeric(value1) || ~isnumeric(value2)
    error('Inputs must be numeric values.');
end 
% Incoporating this if statements makes sure the values input are numeric,
% and if they are not then an error message will display in the command
% window.

sumValue = value1 + value2; % Sum of both values 
diffValue = value1 - value2; % Diifference of value2 from value1
prodValue = value1 * value2; % Product of the two values
maxValue = max(value1,value2);
% Utilizes built-in matlab 'max' function to find the max of the two
% values.

fprintf('Sum: %.2f\n', sumValue)
fprintf('Difference: %.2f\n', diffValue);
fprintf('Product: %.2f\n', prodValue);
fprintf('Max: %.2f\n', maxValue);
% The fprintf function allows for the vlaue to be displayed in a string
% sequence, specifically with the '%.2f/n' rounding to 2 decimals(.2) places
% for floating numbers(f) and creating a new line for each equation(\n).

% This gives a liittle context to each formula rather then simply displaying
% the outputs

end

