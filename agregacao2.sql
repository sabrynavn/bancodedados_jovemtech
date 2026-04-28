--Desafios base de agregação 


select
  genre_id,
  count(track_id) as total_faixas
from
  track
group by
  genre_id
order by
  total_faixas desc;

--Qual o "GenreId" com o maior número de faixas?
select
  genre_id count(track_id)
from
  track
group by
  genre_id
order by
  count(track_id) desc
limit
  1,
  -- Qual tem a mais de 100 faixas cadastrada?
select
  genre_id,
  count(track_id)
from
  track
group by
  genre_id
having
  count(track_id) > 100

--Mostrar clientes com apenas mais de 5 faturas
select count(invoice_id) as faturas , customer_id
from
invoice 
group by
  customer_id
having
count(invoice_id) > 5

