--1
select Nome, Ano from Filmes
--2
select Nome, Ano, Duracao from Filmes 
order by Ano
--3
select  Nome, Ano, Duracao from Filmes 
where Nome = 'De Volta para o Futuro'
--4
select  Nome, Ano, Duracao from Filmes 
where Ano = 1997
--5
select  Nome, Ano, Duracao from Filmes 
where Ano > 2000
--6
select  Nome, Ano, Duracao from Filmes
where Duracao > 100 and Duracao < 150
order by Duracao
--7
select Ano, COUNT(Ano) Quantidade from Filmes
group by Ano
order by Quantidade desc
--8
select PrimeiroNome, UltimoNome from Atores
where Genero = 'M'
--9
select PrimeiroNome, UltimoNome from Atores
where Genero = 'F'
order by PrimeiroNome
--10
select Filmes.Nome, Generos.Genero from Filmes
join FilmesGenero ON Filmes.Id = IdFilme
join Generos on FilmesGenero.IdGenero = Generos.Id
--11
select Filmes.Nome, Generos.Genero from Filmes
join FilmesGenero ON Filmes.Id = IdFilme
join Generos on FilmesGenero.IdGenero = Generos.Id
where Genero = 'Mistério'
--12
select Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel from Filmes
join ElencoFilme ON Filmes.Id = IdFilme
join Atores on ElencoFilme.IdAtor = Atores.Id
