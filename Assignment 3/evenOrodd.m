function [response] = evenOrodd(number1,number2)
% Function for Problem 3
% Joshua Pandullo Monday October 20th 
%
%
% This is a function to determine if a number is even or odd and then give 
% an assocted word for each. It takes the sum of two inputs (number1 and
% number 2, then uses the mod built in function to see if the remainder 
    if ~isnumeric(number1) || ~isnumeric(number2) || rem(number1,1) ~= 0 ...
|| rem(number2,1) ~= 0
        % This if statement checks to see if each input number1 and number2
        % are numeric and integers. By checking if the remainder of each
        % input is not equal to 0, when dividing by 1, you can determine 
        % if the input is a whole number therefore an integer.
        response = 'Inputs must be an integer.';
        % If either of the inputs are not intgers a message will appear in
        % the command window letting the user know atleast one of the numbers 
        % are not integers
        return;
    end

    if mod((number1+number2),2) == 0
        % This if statement takes the sum of the two inputs and divides
        % them by 2 to see if there is a remainder, if the remainder is 
        % true(equal to 0) then the sum of the inputs are even, 
        % while if the remainder is not equal to 0 (false or not true), 
        % then it must be odd
        response = 'Woo';
        % response for being even
        else
        response = 'Hah';
        % response for being odd
    end
end 




