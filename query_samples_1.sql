-- look at all the data from the choices table
select * from choices;

-- compare unassigned versus assigned
select * from choices where assigned_school != 0;
select * from choices where assigned_school = 0;
-- observation: 35 unassigned, 755 assigned

-- investigate those who were unassigned
select choice1 from choices where assigned_school = 0 order by choice1;
-- observation: looks like most people chose from about 3 schools

-- what was the most popular choice1 school for which the child was not assigned to choice1?
select choice1 from choices where assigned_school != choice1 order by choice1;

-- what about the other choices?
select choice1, choice2, choice3, choice4, choice5, assigned_school from choices where assigned_school = choice5 order by choice1;
select choice1, choice2, choice3, choice4, choice5, assigned_school from choices where assigned_school = choice4 order by choice1;
select choice1, choice2, choice3, choice4, choice5, assigned_school from choices where assigned_school = choice3 order by choice1;
select choice1, choice2, choice3, choice4, choice5, assigned_school from choices where assigned_school = choice2 order by choice1;

-- observations
-- clearly, a small handful of schools get chosen most often then others, leading to a higher rate of unassigned children
-- also, a large percent of those unassigned families did not fill in all 5 choices
