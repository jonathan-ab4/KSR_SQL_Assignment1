#SQL Assignment -1 
#Name: Jonathan Abraham Idiculla

#1 Players in Dataset
Select count(*) as No_of_Players from fifa;

#2 Count of nationalities
Select Nationality, count(*) from fifa group by 1;

#3 Top 3 Nationalities by count of players
Select Nationality, count(*) from fifa group by 1 order by count(*) desc limit 3;

#4 Total wage, avg and standard deviation
Select sum(Wage), avg(Wage), stddev(Wage) from fifa;

#5 Highest and lowest wage by player
(Select Name,Wage from fifa order by Wage desc limit 1) union all (Select Name,Wage from fifa order by Wage  limit 1);

#6 Highest and lowest overall rating
(Select Name,Overall from fifa order by Overall desc limit 1) union all (Select Name,Overall from fifa order by Overall limit 1);

#7 Club with highest overall , highest avg of overall rating
(Select Club, sum(Overall) from fifa group by Club order by sum(Overall) desc limit 1) union all (Select Club, avg(Overall) from fifa group by Club order by avg(Overall) desc limit 1);

#8 Top 5 clubs based on avg ratings of players
Select Club, avg(Overall)  from fifa group by Club order by avg(Overall) desc limit 5;

#9 Distribution of left footed and right footed players
Select  Preferred_Foot,count(*) as No_of_Players from fifa group by 1;

#10 Luckiest jersey number
Select Jersey_Number, Penalties from fifa order by Penalties desc limit 1;

#11 No of players from Club where name starts with M
Select Nationality, count(*) as No_of_Players,Club from fifa where Club like "M%"  group by nationality,3 order by No_of_players desc;

#12 Count of players between 20 may 2018 and 1o april 2019
Select count(*) as No_of_Players from fifa where Joined between '20-05-2018' AND '10-04-2019' ;

#13 Count of players date wise
Select count(*) as No_of_Players,Club,Joined from fifa group by joined,2 order by No_of_Players desc;

#14 Count of players year wise
Select count(*) as No_of_Players,Club, Year(STR_TO_DATE(Joined, '%d-%m-%Y')) as year from fifa group by Year(STR_TO_DATE(Joined, '%d-%m-%Y')),2 order by No_of_Players desc;

