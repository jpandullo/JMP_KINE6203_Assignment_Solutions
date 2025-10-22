function [answer] = isItprime(number)
% Function for problem 6
% Joshua Pandullo Monday October 20th 
%
%
% This function is to check if the number being input is a prime number or
% not.
%
% The function then returns an answer in the form of either being true or
% false. Matlab has a built in function to determine if a value is a prime
% number already, whicih I decdied to use.
    if isprime(number) == true;
        answer = true;
        disp(answer);
    % Using the built in isprime function, if the value input is a prime
    % number then the fuction will return true and if that is equal to true
    % then true will be displayed 
    else  
        answer = false;
        disp(answer);
    % if the answer is not a prime number then the variable answer will 
    % be false and displayed
    end
end