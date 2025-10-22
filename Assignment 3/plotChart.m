function plotChart (x,y)
% Problem for Function 7
% Joshua Pandullo Monday October 20th 
%
%
% This function is for creatiing a chart of two vectors which includes the
% chart, title, and each labeled axis. 
%
% It takes the input of the variables 'x', and 'y' to utilize the matlab
% function plot.
    if length(x) ~= length(y)
    error('Input vectors x and y must be of the same length.');
    % This is an error message for the user to determine if the lenght of
    % each vector is the same, and if it is not then the error is displayed
    % in the command window.
    %
    % This is important because if the vectors are not the same then the
    % graph will not be able to be created, in terms of this function.
    end
    plot(x, y);
    % This creates the plot of the variable x and y.
    xlabel('X-axis');
    % Creates the x-axis label.
    ylabel('Y-axis');
    % Creates the y-axis label.
    title('Plot of X vs Y');
    % Creates the title for the graph.
end