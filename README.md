# Unit 4 overchosen schools
## Demonstration semester project

### Purpose
The purpose of this project is to use Unit 4 Controlled Choice data to help parents understand which schools to choose during registration. The information will be conveyed using graphs over multiple years to show trends.

### Background
During registration time, parents are told that they can choose any of 12 elementary schools in rank order. This tends to be a little overwhelming (think about it, 12 schools to choose from), not to mention phrases like "rank order" is not your every day common language. On top of that, there are several nuances that can be confusing as well, like the Priority system which gives you three distinct sets of possibly priority (Sibling, SES and proximity). Given the fact that some schools tend to be more popular than others, and all schools have a limited number of seats, the Controlled Choice program can turn into a lottery for the most popular schools. However, the most frustrating moment for a parent is when they are notified that they were unassigned to any school due to the choices they made. This frustration can be completely removed by helping parents understand the choices they make. In particular, if a parent elects to only choose 3 or 5 of the most popular schools and has no Priority, there is a **__very high__** chance the parent will not get any of them. Thus if a parent is told and educated about which schools tend to be highly chosen (and thus "overchosen"), the parent can avoid the mistake of only choosing schools the child is unlikely to get into due to the nature of the system. Or to put it in other words, the parent can sprinkle in other less-chosen schools to increase the chances of being assigned, even if they are not the first choice. NOTE: if a parent actually puts all 12 schools in rank order, they will **never** be unassigned.

### Acquiring data
Since the school district is a public entity, some records are available via the Freedom of Information Act (aka, FOIA). Fortunately, I have submitted FOIA requests for several years so I have a sufficient amount of data to show trends. Yet the downside is that each year of data is delivered in different formats or different mediums, and so I have to syntehsize a common table structure to store the data.

### Table structure
I propose to create three tables

#### Schools
The Schools table will hold basic information about each school
+ school_id (2-digit number)
+ school_name (variable length string)
+ school_short_name (variable length string)

#### School_capacity
School_capacity will hold information about the capacity for each school each year (it doesn't change much, but it does change). The 'year' is the beginning of the school year, thus '2014' would be the 2014-2015 school year.
+ school_id (2-digit number)
+ year (4-digit number)
+ capacity (3-digit number)

#### Choices
Choices will hold all choices made by each family for each year
+ year (4-digit number)
+ choice1 (2-digit number)
+ choice2 (2-digit number)
+ choice3 (2-digit number)
+ choice4 (2-digit number)
+ choice5 (2-digit number)
+ choice6 (2-digit number)
+ choice7 (2-digit number)
+ choice8 (2-digit number)
+ choice9 (2-digit number)
+ choice10 (2-digit number)
+ choice11 (2-digit number)
+ choice12 (2-digit number)
+ assigned_school (2-digit number)

### Public database
```
host: onyx.csit.parkland.edu
port: 35002
user: example_reader
password: #redaer_elpmaxe#2015
database: example
```
