# Pewlett-Hackard-Analysis

## Purpose
- Pewlett Hackard is looking at needing to replace many retiring employees. In this analysis I will identify 2 categories of employees at the company.
  1. Determine the number of employees retiring and their respective titles
  2. Identify employees who are able to participate in a mentorship program.

### Process
- Deliverable 1
  1. Retrieve the emp_no, first_name, last_name, and birth_date from the Employees table.
  2. Retrieve the title, from_date, and to_date from the Titles table.
  3. Join them on the primary key.
  4. Filter by employee birth_date between 1952 and 1955.
  5. Export into a new csv file.
  6. Use a Disctinct On statment to get the first appereance of each employee.
  7. Exclude the employees that have already left the company.
  8. Create a new table for the count of the unique titles for the number of retiring employees (retiring_titles) and export to csv.
- Deliverable 2
  1. Retrieve the emp_no, first_name, and last_name columns from the Employees table.
  2. Retrieve the from_date and to_date columns from the Department Employee table.
  3. Retrieve the title column from the Titles table.
  4. Use a Distinct On statement to get the first occurence of each employee and create a new table.
  5. Join the Employees and the Department Employee tables on the primary key.
  6. Join the Employees and the Titles tables on the primary key.
  7.Filter the data on the to_date column to all the current employees, then filter the data on the birth_date between January 1, 1965 and December 31, 1965.
  8. Export the new table into a csv file.
  
#### Results
When we look at the results there are several interesting finds about the retiring employees and those that are elegible for mentorship.
- Retiring Unique Title Count

![Unique_Titles_Count.PNG](https://github.com/mselover21/Pewlett-Hackard-Analysis/blob/main/Images/Unique_Titles_Count.png)

- Mentorship Elegibility Count

![mentorship_elegibility_title.png](https://github.com/mselover21/Pewlett-Hackard-Analysis/blob/main/Images/mentorship_count_title.png)

For Senior Engineers we will have 13,651 employees retiring and 5,621 employees eligible for mentorship. This means that we will need to fill 8,030 Senior Engineer positions from outside the company. Looking at Senior Staff we have 12,872 employees retiring and 19,583 elegible for mentorship. We currently have more than enough Senior staff to cover the retiring Senior staff employees. Looking at Engineers we have 2,711 retiring and we currently have 19,967 employees eleigible for mentorship meaning we are again more than covered for the retiring Engineers. The same is true when looking at Staff. We have 2022 Staff retiring and 6,086 Staff elegible for mentorship. For Technique Leagers we have 1,609 employees that will be retiring and we have 2,704 employees that are eligible for mentorship. For Assistant Engineers we have 1,609 employees retiring with 2,704 elegible for mentorship. For Assistant Engineers we have 251 employees retiring and 2,892 elegible for mentorship. For Managers we have 2 retiring and 6 elegible for mentorship. 

##### Summary
All in all there we have a total of 33,118 total employees that are eligible for retirement across the titles of Senior Engingineer, Senior Staff, Engineer, Staff, Technique Leader, Assitant Engineer, and Managers. For all titles except for Senior Engineers we have more than enough current employees that are eligible for mentorship in thier respective titles. We will need to replace a 8,030 Senior Engineers from outside hiring due the high number of Senior Engineers that will be retiring very soon.
