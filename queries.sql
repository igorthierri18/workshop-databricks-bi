-- =====================================================
-- DATASET: totalizadores (KPIs)
-- =====================================================

SELECT
    COUNT(DISTINCT ID_Contrato)          AS qtd_contratos,
    SUM(Valor_Plano_Final)               AS valor_total,
    ROUND(AVG(Valor_Plano_Final), 2)     AS ticket_medio
FROM treinamento_nexus.dm_sales.fact_sales
WHERE Status_Atual = 'Ativo';


-- =====================================================
-- DATASET: evolucao_mensal
-- =====================================================

SELECT
    DATE(CONCAT(SUBSTRING(Competencia, 1, 4), '-', SUBSTRING(Competencia, 6, 2), '-01')) AS data_referencia,
    COUNT(DISTINCT ID_Contrato)  AS qtd_contratos,
    SUM(Valor_Plano_Final)       AS valor_total
FROM treinamento_nexus.dm_sales.fact_sales
WHERE Status_Atual = 'Ativo'
GROUP BY Competencia
ORDER BY Competencia;


-- =====================================================
-- DATASET: pf_pj
-- =====================================================

SELECT
    Tipo_Pessoa,
    COUNT(DISTINCT ID_Contrato)  AS qtd_contratos,
    SUM(Valor_Plano_Final)       AS valor_total
FROM treinamento_nexus.dm_sales.fact_sales
WHERE Status_Atual = 'Ativo'
GROUP BY Tipo_Pessoa;


-- =====================================================
-- DATASET: originacao
-- =====================================================

SELECT
    Originacao,
    SUM(Valor_Plano_Final)       AS valor_total,
    COUNT(DISTINCT ID_Contrato)  AS qtd_contratos
FROM treinamento_nexus.dm_sales.fact_sales
WHERE Status_Atual = 'Ativo'
GROUP BY Originacao
ORDER BY valor_total DESC;


-- =====================================================
-- DATASET: uf_tipo_pessoa (com nomes completos para mapa)
-- =====================================================

SELECT
    'Brazil' AS pais,
    CASE UF
        WHEN 'MG' THEN 'Minas Gerais'
        WHEN 'PE' THEN 'Pernambuco'
        WHEN 'GO' THEN 'Goiás'
        WHEN 'TO' THEN 'Tocantins'
        WHEN 'PA' THEN 'Pará'
        WHEN 'MT' THEN 'Mato Grosso'
        WHEN 'BA' THEN 'Bahia'
        WHEN 'MS' THEN 'Mato Grosso do Sul'
        WHEN 'SP' THEN 'São Paulo'
        WHEN 'CE' THEN 'Ceará'
        WHEN 'RN' THEN 'Rio Grande do Norte'
        WHEN 'MA' THEN 'Maranhão'
        WHEN 'DF' THEN 'Distrito Federal'
        WHEN 'RJ' THEN 'Rio de Janeiro'
        WHEN 'RS' THEN 'Rio Grande do Sul'
        WHEN 'SC' THEN 'Santa Catarina'
        WHEN 'PR' THEN 'Paraná'
        WHEN 'ES' THEN 'Espírito Santo'
        WHEN 'AM' THEN 'Amazonas'
        WHEN 'RO' THEN 'Rondônia'
        WHEN 'PB' THEN 'Paraíba'
        WHEN 'SE' THEN 'Sergipe'
        WHEN 'PI' THEN 'Piauí'
        WHEN 'AL' THEN 'Alagoas'
        WHEN 'RR' THEN 'Roraima'
        WHEN 'AP' THEN 'Amapá'
        WHEN 'AC' THEN 'Acre'
        ELSE UF
    END AS estado,
    Tipo_Pessoa,
    SUM(Valor_Plano_Final)       AS valor_total,
    COUNT(DISTINCT ID_Contrato)  AS qtd_contratos
FROM treinamento_nexus.dm_sales.fact_sales
WHERE Status_Atual = 'Ativo'
GROUP BY UF, Tipo_Pessoa
ORDER BY valor_total DESC;


-- =====================================================
-- DATASET: supervisor_vendedor
-- =====================================================

SELECT
    Vendedor,
    Supervisor,
    COUNT(DISTINCT ID_Contrato)      AS realizado_qtd,
    SUM(Valor_Plano_Final)           AS realizado_rs,
    ROUND(AVG(Valor_Plano_Final), 2) AS ticket_medio
FROM treinamento_nexus.dm_sales.fact_sales
WHERE Status_Atual = 'Ativo'
GROUP BY Vendedor, Supervisor
ORDER BY realizado_rs DESC;
