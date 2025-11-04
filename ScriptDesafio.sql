--1
select Nome, Ano from Filmes order by Id;
--2
select Nome, Ano, Duracao from Filmes order by Ano asc;
--3
select Nome, Ano, Duracao from Filmes where Id = 11;
--4
select Nome, Ano, Duracao from Filmes where Ano = 1997;
--5
select Nome, Ano, Duracao from Filmes where Ano > 2000;
--6
select Nome, Ano, Duracao from Filmes where Duracao > 100 and Duracao < 150 order by Duracao asc;
--7
select Ano, Count(*) as Quantidade from Filmes Group by Ano order by Count(*) Desc;
--8
select * from Atores where Genero ='M' order by Id;
--9
select * from Atores where Genero ='F' order by PrimeiroNome;
--10
select filmes.Nome, Generos.Genero  from Filmes 
join FilmesGenero on FilmesGenero.IdFilme = Filmes.Id
join Generos on Generos.Id = FilmesGenero.IdGenero

--11
select filmes.Nome, Generos.Genero  from Filmes 
join FilmesGenero on FilmesGenero.IdFilme = Filmes.Id
join Generos on Generos.Id = FilmesGenero.IdGenero
where Generos.Genero = 'Mistério'

--12
select filmes.Nome, Atores.PrimeiroNome, atores.UltimoNome, ElencoFilme.Papel 
from Filmes 
join ElencoFilme on ElencoFilme.IdFilme = Filmes.Id
join Atores on Atores.Id = ElencoFilme.IdAtor


select * from Filmes 
select * from Atores
select * from ElencoFilme

select * from FilmesGenero 
select * from Generos
