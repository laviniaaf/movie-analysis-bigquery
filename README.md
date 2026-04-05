# movie-analysis-bigquery

Análise exploratória do dataset IMDb Top 1000 usando SQL no Google BigQuery.

Projeto de prática e treino de SQL com foco em consultas.

## Dataset

- imdb_top_1000.csv com 1k filmes mais bem avaliados do IMDb.
- Informações: título, diretor, ano de lançamento, nota, elenco, duração.

## Perguntas respondidas

**Diretores**
- Quais diretores têm mais de 3 filmes no top 1000?
- Quais filmes Alfred Hitchcock (diretor com mais filmes) dirigiu?
- Quais filmes de Hitchcock têm nota acima de 7?
- Filmografia de Spielberg, Scorsese, Nolan e Kubrick

**Atores**
- Quais filmes Leonardo DiCaprio e Jack Nicholson estrelaram?
- Qual artista aparece em mais filmes no dataset?

**Estatísticas gerais**
- Quantos filmes foram lançados por ano?
- Qual ano tem mais filmes?

## Tecnologias

- Google BigQuery
- SQL (GROUP BY, HAVING, UNION ALL, subqueries)
