select count(*) from vineitems;
select distinct vine from vineitems;
select * from vineitems where mex like '% RT %' OR mex like 'RT %';
select date(created_at) as date, count(*) as number from vineitems group by date;
select `vine` as vine, date(`created_at`) as date from vineitems group by vine, date;
select count(*) as cant, `vine` as vine, date(`created_at`) as date from vineitems group by vine, date;
select count(*) as cant, dayname(`created_at`) as date from vineitems group by date order by cant desc limit 1;
select count(*) as cant, vine as date from vineitems group by vine order by cant desc;