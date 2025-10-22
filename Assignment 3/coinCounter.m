function [dollarAmount] = coinCounter(pennies,nickels,dimes,quarters)
% Function for problem 4
% Joshua Pandullo Monday October 20th 
%
%
% This function takes the numerical amount of each type of coin and then
% multiplies the value of each coin by the quantity. All values are then
% added up together to create the total dollar amount and stores it in the
% variable dollarAmount.
% 
% The inputs are for the quantity of each type of coin.
%
dollarAmount = (pennies * 0.01) + (nickels * 0.05) + (dimes * 0.10) + (quarters * 0.25);
% This multiplies each coin quanitiy by theiir value to get how much it is
% worth total for each coin.
roundedDA = round(dollarAmount,2);
% This ensures the dollar amount rounds to 2 decimal places.
dollarDisplay = ("$" + roundedDA);
% The variable dollarDisplay includes a dollar sign with the amount from
% the total value from the coins to give context and units to the function.
display(dollarDisplay);
% Returns the total dollar amount as output
end




