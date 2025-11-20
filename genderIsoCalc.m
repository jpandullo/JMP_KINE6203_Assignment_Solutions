function [maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean]...
    = genderIsoCalc(Gender,Day1,Day2,Day3)
% This is a function which takes the variables Gender, Day1, Day2, and Day3
% and runs a series of math equations to find means of the data over the
% three days for different genders. 
% 
% The output variables calculated from the data are split into the male 
% and female groups. Each individual's mean isometric strength over the 
% three days is stored in corresponding column vectors. 
% Then the mean of all Subjects is found for each gender
% and stored in the corresponding gender variable as a single value.


male_idx = Gender == 'M';
female_idx = Gender == 'F';
% This helps distinguish the two different groups by creating an index for 
% each gender.
%
% Ex. Male = [1,2,6,7,10,12,15,16,20,21,23,24,25]
% Ex. Female = [3,4,5,8,9,11,13,14,17,18,19,22]


D1male = Day1(male_idx);
D2male = Day2(male_idx);
D3male = Day3(male_idx);
MaleMatrix = [D1male,D2male,D3male];
% This creates a matrix of specificallly male subjects found from the 
% male index and stores each subject as a row, with the data associted 
% with each subject on each of the Days 1-3 as the columns. 

maleIsoIndMeans = mean(MaleMatrix,2);
% This stores the means across the second dimension, which in this case
% would be rows, from the variable of FemaleMatrix. It then stores the new
% 13x1 matrix in the variable maleIsoIndmeans.

D1female = Day1(female_idx);
D2female = Day2(female_idx);
D3female = Day3(female_idx);
FemaleMatrix = [D1female,D2female,D3female];
% This creates a matrix of specificallly female subjects found from the 
% female index and stores each subject as a row, with the data associted 
% with each subject on each of the Days 1-3 as the columns. 

femaleIsoIndMeans = mean(FemaleMatrix,2);
% This stores the means across the second dimension, which in this case
% would be rows, from the variable of FemaleMatrix. It then stores the new
% 13x1 matrix in the variable femaleIsoIndmeans.


maleGroupIsoMean = mean(maleIsoIndMeans);
% This takes the matrix stored from the individual male means and then
% calculates the average of all to create one group mean.

femaleGroupIsoMean = mean(femaleIsoIndMeans);
% This takes the matrix stored from the individual female means and then
% calculates the average of all to create one group mean.

end

