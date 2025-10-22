function [validity] = triangleChecker(sides)
% Function for problem 5
% Joshua Pandullo Monday October 20th 
%
% This function is to check the validity of a triangle by checking if the
% sum of the lenghts of the two smaller sides is larger than the length of
% the third side.
% 
% You input the sides of a triangle in a vector format in the input
% variable called 'sides'.
%
% Example: triangleChecker([4 10 7])
%
% 
if ~isnumeric(sides) || numel(sides) ~= 3
        error('Input must be a numeric array with exactly 3 elements.');
end
% This if statement makes sure the input of sides is not more or less than
% 3 sides, which if true would automatically make the object not a triangle.
% Additionally it makes sure that the input is a numeric value.
sort(sides)
% The built in sort function sorts the array from least to greatest
    if (sides(1)+sides(2)) > sides(3)
     validity = true;
% This if statement checks the conditions for a triangle to be accurate by 
% taking the two shortest sides and adding them together, then comparing to
% the longest side of the triangle.
        else 
        validity = false;
        % If the two combined sides are not greater than the longest side
        % the validtiy will be false.
    end
end