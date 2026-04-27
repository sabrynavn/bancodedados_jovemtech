--Listando nome e paises de clientes
select first_name as nome,last_name as sobrenome, country as pais from customer 
where country in ('Brazil','Canadá' , 'France')

order by sobrenome;

-- Mostrando o nome e a duração dessas faixas 
select total from invoice
order by total desc
limit 5


--Pega a quantidade de faixas no campo composer 
select milliseconds as duracao_segundos from track
where milliseconds between 240000 and 360000
order by duracao_segundos asc


select * from invoice where invoice_date > '2013-01-01' and total > 5.00 limit 10 offset 30
