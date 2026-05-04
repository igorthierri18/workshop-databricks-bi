# BI no Databricks — Workshop Análise de Vendas

Workshop hands-on de BI utilizando **Databricks AI/BI Dashboard** e **Genie Spaces**, com dados reais de vendas.

---

## Agenda

| # | Tópico | Descrição |
|---|---|---|
| 1 | Databricks como ferramenta de análise | O que é e como funciona na nossa estrutura |
| 2 | Dados reais na prática | A mesma base que alimenta o dashboard de Análise de Vendas |
| 3 | Criando gráficos | Construindo dashboards direto na plataforma |
| 4 | Hands-on | Sua vez de explorar e criar |
| 5 | Genie Space x Genie AI | Diferença entre as ferramentas e quando usar cada uma |
| 6 | Alertas | Como configurar notificações automáticas sobre os dados |
| 7 | Publicação | Como compartilhar dashboards e análises com o time |

---

## Ambiente

| Item | Detalhe |
|---|---|
| Workspace | `origoid-exp-databricks` |
| Catálogo | `treinamento_nexus` |
| Schema | `dm_sales` |
| Tabela | `fact_sales` |
| Cluster | `exp_treinamento_nexus` |
| Warehouse | Serverless Starter Warehouse |

---

## Conteúdo do Repositório

```
📁 apresentacao_db_bi/
├── README.md                    # Este arquivo
├── queries.sql                  # Todas as queries utilizadas no workshop
├── workshop_bi_databricks.md    # Documentação completa do projeto
└── trilha_ensinamento.txt       # Trilha de ensino e anotações
```

---

## Pré-requisitos

- Acesso ao workspace `origoid-exp-databricks`
- Usuário adicionado ao grupo `dbx-exp-treinamento-inteligencia_dados-030211`
- Permissão no catálogo `treinamento_nexus`

---

## Referências

- [Documentação oficial Databricks AI/BI](https://docs.databricks.com/pt/dashboards/index.html)
- [Documentação oficial Genie](https://docs.databricks.com/pt/genie/index.html)
- [Boas práticas Genie](https://docs.databricks.com/pt/genie/best-practices.html)
- [Lab Databricks BR — Genie AI/BI](https://github.com/Databricks-BR/genie_ai_bi)
