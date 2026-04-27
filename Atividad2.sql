begin;

delete from track;
select count(*) from track

rollback;
select count(*) from track