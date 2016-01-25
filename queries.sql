select count(*) from vineitems; -- How many tweets? 
select distinct vine from vineitems; -- Unique Vines? 
select * from vineitems where mex like '% RT %' OR mex like 'RT %'; -- Retweets? 
select date(created_at) as date, count(*) as number from vineitems group by date; -- How many tweets per day? 
select `vine` as vine, date(`created_at`) as date from vineitems group by vine, date; -- Unique Vine per day?
select count(*) as cant, `vine` as vine, date(`created_at`) as date from vineitems group by vine, date; -- Unique Vine per day? 
select count(*) as cant, dayname(`created_at`) as date from vineitems group by date order by cant desc limit 1; -- Day of the week with the highest peak?
select count(*) as cant, vine as date from vineitems group by vine order by cant desc; -- Which are the most shared Vine? 