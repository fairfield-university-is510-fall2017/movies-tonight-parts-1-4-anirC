#use moviestonight;
#select count(*) from datasheet;
select * from datasheet;

insert into movie (Title,Rating) select distinct mtitle, rating from datasheet;
#select * from movie;

insert into artist (Name) select distinct cname from datasheet;
#select * from artist;

insert into theater (Name,Location,Phone) select distinct TName,Location,Phone from datasheet;
#select * from theater;

insert into credits (MID,CCode,AID) 
select DISTINCT movie.MID, datasheet.ccode, artist.AID from 
datasheet  
	join movie on datasheet.MTitle = movie.Title
    join artist on datasheet.CName = artist.name;
#select * from credits; 

insert into shows (showtime,TID,MID) 
select DISTINCT datasheet.showtime, theater.TID,movie.MID from 
datasheet  
	join movie on datasheet.MTitle = movie.Title
    join theater on datasheet.TName = theater.name;   
#select * from shows;


select distinct MTitle, TName, Showtime, CCode,  CName from datasheet;
select count(distinct MTitle, TName, Showtime, CCode,  CName) from datasheet;

#drop table datasheet;

