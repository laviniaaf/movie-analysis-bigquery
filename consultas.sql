-- Nomes dos diretores dos filmes
SELECT Director FROM `movie-analysis-492416.test.imdb`;

-- Diretores que tem mais de 3 filmes:
SELECT 
  Director,
  COUNT(Series_Title) AS Quantidade_Filmes
FROM `movie-analysis-492416.test.imdb`
GROUP BY Director
HAVING COUNT(Series_Title) > 3
ORDER BY Quantidade_Filmes DESC;

-- O diretor que teve mais filmes foi ALFRED HITCHCOCK

-- Lista dos filmes de ALFRED HITCHCOCK
SELECT
  Director, Series_Title, Released_Year,
FROM `movie-analysis-492416.test.imdb`
WHERE Director = 'Alfred Hitchcock';

-- Filmes de ALFRED HITCHCOCK com notas acima de 7
SELECT
  Director, Series_Title, Released_Year, IMDB_Rating AS Notas,
FROM `movie-analysis-492416.test.imdb`
WHERE Director = 'Alfred Hitchcock' AND IMDB_Rating > 7
ORDER BY IMDB_Rating DESC;

-- Steven Spielberg
SELECT
  Director, Series_Title, Released_Year, IMDB_Rating AS Notas,
FROM `movie-analysis-492416.test.imdb`
WHERE Director = 'Steven Spielberg' AND IMDB_Rating > 5
ORDER BY IMDB_Rating DESC;

-- Martin Scorsese
SELECT
  Director, Series_Title, Released_Year,
FROM `movie-analysis-492416.test.imdb`
WHERE Director = 'Martin Scorsese';

-- Christopher Nolan
SELECT
  Director, Series_Title, Released_Year,
FROM `movie-analysis-492416.test.imdb`
WHERE Director = 'Christopher Nolan';

-- Stanley Kubrick
SELECT
  Director, Series_Title, Released_Year, IMDB_Rating AS Notas,
FROM `movie-analysis-492416.test.imdb`
WHERE Director = 'Stanley Kubrick'
ORDER BY IMDB_Rating DESC;

-- Inception artistas
SELECT
  Star1, Star2, Star3, Director, Series_Title, Released_Year, IMDB_Rating AS Notas,
FROM `movie-analysis-492416.test.imdb`
WHERE Series_Title = 'Inception';

SELECT
  Star1, Star2, Star3, Director, Series_Title, Released_Year, IMDB_Rating AS Notas,
FROM `movie-analysis-492416.test.imdb`
WHERE Series_Title = 'The Departed';

-- Leo 
SELECT
  Star1, Star2, Star3, Series_Title, Released_Year, IMDB_Rating AS Notas,
FROM `movie-analysis-492416.test.imdb`
WHERE Series_Title = 'Catch Me If You Can';

SELECT
  Star1, Series_Title, Released_Year, Director, IMDB_Rating AS Notas,
FROM `movie-analysis-492416.test.imdb`
WHERE Star1 = 'Leonardo DiCaprio';

-- Jack
SELECT
  Star1, Series_Title, Released_Year, Director, IMDB_Rating AS Notas,
FROM `movie-analysis-492416.test.imdb`
WHERE Star1 = 'Jack Nicholson';


-- Quantos filmes foram lançados por ano:
SELECT 
  COUNT(Series_Title) AS Quantidade_de_Series, 
  Released_Year AS Ano_Lancamento
FROM `movie-analysis-492416.test.imdb`
GROUP BY Released_Year
ORDER BY Quantidade_de_Series DESC;

-- Ano com mais filmes
SELECT 
  Released_Year AS Ano_Lancamento,
  COUNT(Series_Title) AS Quantidade_Filmes
FROM `movie-analysis-492416.test.imdb`
GROUP BY Released_Year
ORDER BY Quantidade_Filmes DESC
LIMIT 1;

-- Artista que mais fez filmes
SELECT 
  Artista,
  COUNT(*) AS Quantidade_Filmes
FROM (
  SELECT Star1 AS Artista FROM `movie-analysis-492416.test.imdb`
  UNION ALL
  SELECT Star2 FROM `movie-analysis-492416.test.imdb`
  UNION ALL
  SELECT Star3 FROM `movie-analysis-492416.test.imdb`
  UNION ALL
  SELECT Star4 FROM `movie-analysis-492416.test.imdb`
)
GROUP BY Artista
ORDER BY Quantidade_Filmes DESC;

-- Filme mais demorado
SELECT 
  Series_Title,
  Runtime
FROM `movie-analysis-492416.test.imdb`
ORDER BY Runtime DESC;

-- Filmes mais velhos
SELECT
  Series_Title,
  Released_Year
FROM `movie-analysis-492416.test.imdb`
ORDER BY Released_Year ASC;

-- Detalhes do filme acima
SELECT
    Series_Title AS Filme,
    Star1 AS Ator_principal,
    Runtime, 
    Genre,
    Director,
    Overview AS Resumo,
FROM `movie-analysis-492416.test.imdb`
WHERE Series_Title = 'Das Cabinet des Dr. Caligari';

