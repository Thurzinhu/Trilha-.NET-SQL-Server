-- 1 - Buscar o nome e ano dos filmes

SELECT Nome, Ano
FROM Filmes

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT Nome, Ano
FROM Filmes
ORDER BY Ano

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

-- 4 - Buscar os filmes lançados em 1997

SELECT Nome, Ano, Duracao 
FROM Filmes
WHERE Ano = 1997

-- 5 - Buscar os filmes lançados APÓS o ano 2000

SELECT Nome, Ano, Duracao 
FROM Filmes
WHERE Ano > 2000

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150,
-- ordenando pela duracao em ordem crescente

SELECT Nome, Ano, Duracao 
FROM Filmes
WHERE Duracao BETWEEN 101 AND 149
ORDER BY Duracao

-- 7 - Buscar a quantidade de filmes lançadas no ano, 
-- agrupando por ano, ordenando pela duracao em ordem decrescente

SELECT Ano, COUNT(Ano) AS QuantidadeFilmes
FROM Filmes
GROUP BY Ano
ORDER BY Ano DESC

-- 8 - Buscar os Atores do gênero masculino, 
-- retornando o PrimeiroNome, UltimoNome

SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'M'

-- 9 - Buscar os Atores do gênero feminino, 
-- retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10 - Buscar o nome do filme e o gênero

SELECT Nome, G.Genero
FROM Filmes
JOIN FilmesGenero AS FG ON Filmes.Id = FG.IdFilme
JOIN Generos AS G ON FG.IdGenero = G.Id

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"

SELECT Nome, G.Genero
FROM Filmes
JOIN FilmesGenero AS FG ON Filmes.Id = FG.IdFilme
JOIN Generos AS G ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mistério'


-- 12 - Buscar o nome do filme e os atores, 
-- trazendo o PrimeiroNome, UltimoNome e seu Papel

SELECT Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel
FROM Filmes	AS F
JOIN ElencoFilme AS EF ON EF.IdFilme = F.Id
JOIN Atores AS A ON A.Id = EF.Id

-- SELECT IdAtor
-- FROM ElencoFilme
-- WHERE IdFilme = (
-- 	SELECT id 
-- 	FROM Filmes
-- 	WHERE Nome LIKE 'Blade%'
-- )