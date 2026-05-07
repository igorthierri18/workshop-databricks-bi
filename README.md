# BI no Databricks — Workshop Análise de Vendas

---

## Sobre mim

Sou **Igor**, engenheiro de dados em cloud com **7 anos de carreira** (2026). Certificado **Microsoft Azure** e **Google Cloud**, com experiência em projetos de grande escala:

- **Ambev** — Zé Delivery e Beesforce
- **Smart Sampa** — Cidade Inteligente de São Paulo
- **Radar Inteligente** — Reporte de queixas de roubos na Marginal para a COPOM
- **Report Climático** — Prefeito de São Paulo Ricardo Nunes

---

Workshop hands-on de BI utilizando **Databricks AI/BI Dashboard** e **Genie Spaces**, com dados reais de vendas.

---

## Escopo

|  | Tópico | Descrição |
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
├── prompt_genie.sql             # prompt Genie
```

## Resultado esperado pós hands-on

<img width="1423" height="736" alt="image" src="https://github.com/user-attachments/assets/7fd75948-21fa-4958-aa4f-81d66cc89167" />
<img width="1223" height="714" alt="image" src="https://github.com/user-attachments/assets/bdd60a0c-9fac-41f7-bc9d-ac252a979c55" />
<img width="1203" height="544" alt="image" src="https://github.com/user-attachments/assets/62b3c58f-82d3-4144-908a-da3e25dab06c" />
<img width="1413" height="744" alt="image" src="https://github.com/user-attachments/assets/9f7437e0-71a4-40cb-b356-4fce3ba55a1e" />

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
