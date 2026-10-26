# Avaliações no IMDb: fatores e enviesamentos

Projeto integrador de **Seminário de Sistemas e Aplicações** (MEI, UFP, 2026/27).
Autor: Frederico Soliz · 2022125511@ufp.edu.pt

A nota de um filme no IMDb reflete a sua qualidade, ou depende do género, da duração, da época e da popularidade? Este projeto responde a cinco perguntas com dados públicos do IMDb e o ecossistema R.

## Perguntas de investigação

1. Que fatores (género, duração, década, popularidade) explicam a nota média de um filme?
2. Os filmes antigos têm melhor nota por serem melhores, ou por viés de sobrevivência?
3. A relação entre número de votos e nota é igual em todos os géneros?
4. Quanto da nota se deve ao realizador?
5. É possível prever se um filme terá nota ≥ 7?

## Estrutura

| Ficheiro / pasta | Conteúdo |
|---|---|
| `01_preparacao.qmd` | Download, importação, limpeza, transformação e dicionário de dados |
| `02_exploracao.qmd` | Estatística descritiva e visualizações (ggplot2) |
| `03_modelacao.qmd` | Modelos das 5 perguntas (lm, lme4, glm, ranger) |
| `relatorio.qmd` | Relatório final reprodutível |
| `apresentacao.qmd` | Slides da apresentação final (revealjs) |
| `R/tema.R` | Tema gráfico e paleta comuns |
| `docs/dicionario_dados.csv` | Dicionário de dados |
| `figuras/`, `resultados/` | Figuras e objetos gerados pelos notebooks |
| `data/` | Dados descarregados (**não versionados**, licença não comercial) |

Os ficheiros `.html` com o mesmo nome são as versões renderizadas, que abrem diretamente no browser.

## Como reproduzir

Requisitos: R ≥ 4.3, Quarto ≥ 1.4 (incluído no RStudio) e cerca de 2 GB de espaço livre.

```r
install.packages(c("data.table", "dplyr", "tidyr", "ggplot2", "patchwork", "broom",
                   "knitr", "rmarkdown", "lme4", "ranger", "pROC", "R.utils", "scales"))
```

Na raiz do projeto (abrir `ssa-imdb.Rproj`):

```bash
quarto render
```

O comando executa os notebooks por ordem (definida em `_quarto.yml`). O primeiro descarrega ~630 MB de [datasets.imdbws.com](https://datasets.imdbws.com/) e regista a data do *snapshot* em `data/raw/data_download.txt`. Todos os caminhos são relativos à raiz do projeto.

## Dados

[IMDb Non-Commercial Datasets](https://developer.imdb.com/non-commercial-datasets/): `title.basics`, `title.ratings`, `title.crew`, `name.basics`. Informação cedida por cortesia do IMDb (<https://www.imdb.com>), usada com autorização e apenas para fins não comerciais.
