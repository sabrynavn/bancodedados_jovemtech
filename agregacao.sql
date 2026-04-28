-- Exemplos de agregação em sala

select
  round(avg(total), 2) as ticket_medio
from
  invoice
where
  billing_country in ('Germany', 'France', 'Portugal', 'UK')
having
  sum(total) > 100
  --Usar group para agrupar e fazer conexão entre as informações/dados)
select
  billing_country,
  count(*)
from
  invoice
group by
  billing_country

  -- Agregação por clientes 
select
  customer_id,
  sum(total) as total_gasto
from
  invoice
group by
  customer_id
  