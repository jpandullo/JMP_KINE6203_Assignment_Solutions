function [outputValue] = doubleUp(inputValue)
% Function for Problem 1
% Joshua Pandullo Monday October 20th 
%
%
% This function takes an input in the form of a variable called inputValue 
% which then multiples the variable by 2 and returns an output variable
% called outputValue 
if ~isnumeric(inputValue)
    error('Input must be a numeric value.');
end
% Validate input to ensure it is numeric, and give an error message if not.
outputValue = 2 * inputValue;
% Calculates the output value by multiplying by 2
end
