function guessThatNumber()  % *** WARNING: CONTAINS INTENTIONAL BUGS! ***
%---------------------------------------------------------------
%       USAGE: guessThatNumber() - Assignment 5
%
%        NAME: Joshua Pandullo
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it, 
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github. There are between 9 - 12 bugs,
%              depending on how you correct them. 
%
%      INPUTS: None
%
%     OUTPUTS: None
%
%---------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;    % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (buggy)\n\n', ...
'This program plays the game of Guess That Number in which you have to guess\n', ...
'a secret number.  After each guess you will be told whether your \n', ...
'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

level = input('Enter level (1-3): '); 

while level ~= beginner && level ~= moderate && level ~= advanced       
fprintf('Sorry, that is not a valid level selection.\n')
level = input('Please re-enter a level of play (1-3): ');
end
% Bug found above: I found this by sectioning off each area of code and
% running the section. Once I ran ths section, in the command window I 
% noticed the while loop always ran. This was because the statment had 
% previously used "||', which would mean "or" causing the level to never be
% able to satisfy the loop. Therfore I changed the syntax to "&&", meaning
% while the level was none of the values for beginner, moderate, and
% advanced then it would display the fprintf string. After changing this, I
% re ran the script and was able to continue after entering a valid level.

% set highest secret number based on level selected

if level == beginner 
% This is an example bug which was aked about in class:
% *Bug found: I found this by trying to run the code and getting a incorrect use of '=' error message.*                     

    highest = beginnerHighest;

    elseif level == moderate

    highest = moderateHighest;

    else
    highest = advancedHighest;      
end
% Bug found above: I changed advancedhighest to advancedHighest, and I found 
% this by simply double checking if the variables were the same value as 
% previously stated. I noticed that the variable had different cases as the
% others as well, and then realized the H needed to be capitalzed to match
% the correct spelling of the previouslly stated variable.

%
% randomly select secret number between 1 and highest for level of play
%
%secretNumber = floor(rand() + 1 * highest);   
secretNumber = randi([1 highest]); 
% Bug Found above: This bug was found due to running the section and
% realizing the secert number was always the maximum value or highest in
% this case. This was because the previous function was essentially
% mutliplying 1 by the highest value, always resulting in the highest
% value, clearly not randomizing the secert number. To adjust this I used
% the randi function for 1 thought the highest value which would be
% associated with the difficulty level.
% 
%
% initialize number of guesses and User_guess

numOfTries = 0;
% Bug found here: This was originally 1, but was adjusted to 0. This is
% because the number of tries should be initally 0, and was found when the
% fprintf string for correctly guessing the secret number displayed a value
% one value more than the number of guesses actually taken.
userGuess = 0;

% repeatedly get user's guess until the user guesses correctly

while userGuess ~= secretNumber

% get a valid guess (an integer from 1-Highest) from the user

fprintf('\nEnter a guess (1-%d): ', highest);
userGuess = input('');

while userGuess < 1 || userGuess > highest

% Bug Found above: Originally the statement was greater than or equal
% to the variable "highest", even though it should've only been greater
% than. This was found when testing the code during the beginner level,
% and the secreetNumber value was 10, but unable to be guessed since the 
% below fprintf string would appear. I realized that it had to do with
% something for the highest value and then noticed this statement had the
% equal to casuing the fprintf to be displayed when the userGuess was equal
% to the highest.
fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);
userGuess = input('');

end
% Bug Found above: There wasn't an additonal end statment for the original
% while loop, this was found when running the entire function and reading
% the error messages. It was clear that there was two while loops and an
% additional end was needed for the inner while loop.

% of guess validation loop

% add 1 to the number of guesses the user has made

numOfTries = numOfTries + 1;

% report whether the user's guess was high, low, or correct

if userGuess < secretNumber
fprintf('Sorry, %d is too low.\n', userGuess);
% Bug Found above: This bug was found due to the error message appearing 
% with a repetitive statment, "userGuess > secretNumber" appeared twice. 
% Originally there was "userGuess > secret number" 
% for the first condition in the if statement. This shouldve been a less
% than symbol since the statement is telling the user that their guess is
% too low.
    elseif userGuess > secretNumber 
    fprintf('Sorry, %d is too high.\n', userGuess);
    elseif numOfTries == 1
    fprintf('\nLucky You!  You got it on your first try!\n\n');
    else
    fprintf('\nCongratulations!  You got %d in %d tries.\n\n', ...
    secretNumber,numOfTries);
% Bug found above: The second %d variable being the numOftries would not 
% appear since there was not a second variable at the end of the fprintf
% statement. This was found when guessing the correct number, but the
% statement displayed was gramatically incorrect. It had the secretNumber
% included, but left out the value for number of tries.

fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n');

end  % of guessing while loop


end % end of game
% Bug Found here: This was originally not placed in the correct spot, it
% was found where the "end of guess valdation loop" comment occured at. The
% bug was discovered because during the inital trial of running the
% function it would be stuck in the first while loop, and repeat the
% fprntf string "Enter a guess".
