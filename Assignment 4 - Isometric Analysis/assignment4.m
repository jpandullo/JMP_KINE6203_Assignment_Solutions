%% Assignment 4 Joshua Pandullo
% This assignment is for analyzing isometric strength data across gender
% groups and individuals over a three day periiod. 
% 
% The primary objectives are:
% 
% 1. To create a function which calculates various gender means.
%
% 2. To create a function which compares increases in strength over various
% days.
% 
% 3. Normalize strength relative to body weight, and calcualte the 
% mean for each gender group.
% 
% 3. Export the results into a generated csv file. 

[SubjectID, Age, Gender, Weight, Day1, Day2, Day3] = importfile('isok_data_6803.csv');
% This will import the data table which was given, and convert the table 
% into column vectors so that I am able to manipulate the variiables. 


[maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean]...
    = genderIsoCalc(Gender,Day1,Day2,Day3);
% This calls the genderIsoCalc function to generate the outputs for individual
% gender means across the three days, as well as the total mean for each
% gender group.


day1toDay2 = dayComparer(SubjectID,Day1,Day2);
% This calls the function dayComparer and analyzes the subjects with
% increased isometric stregnth from Day1 to Day2. It then stores the list
% of subjects who saw increases in the variable day1toDay2.


day2toDay3 = dayComparer(SubjectID,Day2,Day3);
% This once again calls the function dayComparer and analyzes the subjects with
% increased isometric stregnth, yet from Day2 to Day3 this time. 
% It then stores the list of subjects who saw increases in the variable day2toDay3.


normDay1mean = mean((Day1) ./ (Weight));
normDay2mean = mean((Day2) ./ (Weight));
normDay3mean = mean((Day3) ./ (Weight));
% This takes the column vector and divides by the weight in order to
% calculate strength relative to body weight.


% ChatGPT helped trouble shoot parts of this section after having issues exporting
% the file. Originally, I was able to generate a table with the column
% vectors but could not get the NaN to fill in to make the column vectors
% the same length. 
%
% All of the code which ChatGPT generated is commented on to ensure
% understanding before incoprating it in the assignemnt. 


vars = {maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean,...
    femaleGroupIsoMean, day1toDay2, day2toDay3, normDay1mean, normDay2mean, ...
    normDay3mean};
% This creates a variable of all the outputs which will be included in the
% table

varNames = {'maleIsoIndMeans', 'femaleIsoIndMeans', 'maleGroupIsoMean', ...
    'femaleGroupIsoMean', 'day1toDay2', 'day2toDay3', 'normDay1mean', ...
    'normDay2mean', 'normDay3mean'};
% These are the names of each output variable which will be assigned to the
% top of each column vector in the table.

maxLen = max(cellfun(@length, vars));
% This finds the max length out of all the variables by using the length
% function, and using cellfun to apply this across all the variables stored 
% within vars.

for i = 1:numel(vars)
    vec = vars{i};
    vec(end+1:maxLen, 1) = NaN;  % pad shorter columns with NaN
    vars{i} = vec;              % store back padded vector
end
% This is where I had ChatGPT help generate the for loop which I was
% stuggling with. 
% This for loop goes through the each of the results stored in vars, it
% then pads the column vector by adding NaN to the remainder of each column
% vector until the value of the column vector of the longest length.
% Lastly, it overwrites the previous vector with the newly created one. 


T = table(vars{:}, 'VariableNames', varNames);
% This creates a variable called T which creates a table from the outputs 
% stored in vars. The  ':' ensures they are column vectors, and then uses
% the varNames as the headers of each associated column vector. 

writetable(T, 'iso_results.csv');
% This utilizes writetable to create the table with the structure stored
% in the variable T, and name it "iso_results".



