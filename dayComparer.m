function [increasedSubjects] = dayComparer(SubjectID,initialday,finalday)
% This is a function which takes inputs from SubjectIDs, an inital day,
% and a final day. It then compares the Subject's values to give an 
% output value called increasedSubjects which contains a list of all 
% subjects which increased from the inital day to the final day.

increasedIndex = finalday > initialday;
% This variable stores the compared values of the two input days in a 
% column vector.

increasedSubjects = SubjectID(increasedIndex);
% This is the output variable which stores the SubjectIds that correspond 
% with the increasedIndex

end 
   
