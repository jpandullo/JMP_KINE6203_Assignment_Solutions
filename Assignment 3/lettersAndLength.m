function [FirstLetter,LastLetter,WordLength] = lettersAndLength(word)
% Function for Problem 9
% Joshua Pandullo Monday October 20th 
%
%
% This function takes the input as a variable called word in the format of
% a string. It gives 3 outputs, the first letter if the string, the last
% letter of the string, and the length of the string.
%
% The input must be put in the format of a string.
%
% Example: lettersAndLength('Halloween')
%
if ~ischar(word) && ~isstring(word)
        error('Input must be a string or character array.');
end
% This if statement helps make sure the input of 'word' is a string and not
% a numerical value, if it is not in string format then an error message
% will be displayed.
string = char(word);
% This creates a variable called string and turns the input into a
% character array.
FirstLetter = string(1);
% This variable is to store the first value of the character array, which
% would be the first letter of the string input.
LastLetter = string(end);
% This variable is to store the last value of the character array, wich
% would be the last letter of the string input.
WordLength = length(string);
% This variable is to calculate the length of the string input and gives a
% numerical value.
fprintf('The first letter is: %s\n', FirstLetter);
fprintf('The last letter is: %s\n', LastLetter);
fprintf('The word length is: %d\n', WordLength)
% These fprintf functions help give context to each output value, instead
% of simply displaying the values, now the first letter, last letter, and
% word length will be displayed with each corresponding value.
end
