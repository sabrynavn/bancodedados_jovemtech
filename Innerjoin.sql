-- Atividades de InneJoin

select count(*) from album
inner join artist
on album.artist_id = artist.artist_id
limit 300

select * from track as t
inner join album al    
on t.album_id = al.album_id

select
t.name as nome_da_musica,
al.title as titulo_album,
t.unit_price as preco_unitário,
ar.name as nome_do_artista
from
track t
inner join album al
on t.album_id = al.album_id
inner join artist ar
on al.artist_id = ar.artist_id


Select c."first_name" , c."last_name"
from "customer" c
left join "invoice" i
 on c."customer_id"= i."customer_id"
 where i."invoice_id" IS NULL;






