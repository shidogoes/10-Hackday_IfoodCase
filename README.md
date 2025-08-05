# Desafio Analítico iFood – Delivery Optimization

Este repositório reúne o passo a passo completo da análise de atrasos em entregas iFood, contemplando extração/limpeza dos dados, análises no PostgreSQL e visualizações no Excel.

## Estrutura do Repositório

- `data/` — Dataset original: `IfoodCase.csv`
- `sql/` — Scripts SQL utilizados:
  - `01_limpeza_e_engenharia.sql`: comandos de limpeza dos dados e engenharia de colunas auxiliares (ex: dia_da_semana, hora_do_dia).
  - `02_analise_exploratoria.sql`: consultas SQL para os diagnósticos e exportação de tabelas.
- `export/` — Tabelas exportadas do PostgreSQL em CSV para uso no Excel (análises e gráficos).
- `graficos/` — Gráficos finais gerados no Excel/Sheets utilizados na apresentação.
- `slides/` — Arquivo final dos slides da apresentação (`apresentacao_ifood.pptx`).

## Passo a Passo do Projeto

### 1. Importação e Preparação dos Dados

- Importe o arquivo `IfoodCase.csv` para o banco de dados PostgreSQL.
- Execute o script `01_limpeza_e_engenharia.sql` para:
  - Remover ou tratar valores nulos.
  - Garantir os tipos corretos (ex: data/hora).
  - Criar novas colunas derivadas, como:
    - `dia_da_semana`
    - `hora_do_dia`
    - `periodo_do_dia`
    - `fim_de_semana`

### 2. Análise Exploratória e Diagnóstico

- Execute o script `02_analise_exploratoria.sql` para gerar os principais diagnósticos (pedidos por dia, heatmap, causas de atraso, etc.).
- Exporte os resultados relevantes via pgAdmin para arquivos CSV e salve em `export/`.

### 3. Visualização

- Importe os CSVs no Excel ou Google Sheets.
- Elabore os gráficos (linhas, barras, heatmap, etc.) e salve as imagens em `graficos/`.

### 4. Apresentação

- Insira gráficos, tabelas e textos na apresentação em PowerPoint (`slides/apresentacao_ifood.pptx`).

## Reprodutibilidade

- Scripts SQL e arquivos CSV exportados permitem refazer os principais diagnósticos.
- Gráficos e slides tornam o storytelling claro e replicável.

## Como Rodar

1. Clone este repositório:
    ```
    git clone https://github.com/shidogoes/10-Hackday_IfoodCase.git
    cd 10-Hackday_IfoodCase
    ```
2. Importe `data/IfoodCase.csv` em um banco PostgreSQL (versão 17.5).
3. Rode os scripts na pasta `sql/` no pgAdmin ou outro cliente.
4. Exporte os resultados necessários para a pasta `export/`.
5. Importe os CSVs no Excel/Sheets, gere e salve os gráficos em `graficos/`.
6. Monte ou atualize os slides em `slides/` usando os gráficos salvos.

## Licença

MIT — Sinta-se livre para utilizar e referenciar este material.


