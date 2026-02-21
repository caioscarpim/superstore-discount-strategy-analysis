# 📊 Diagnóstico Estratégico da Política de Descontos – Superstore

## 🎯 Objetivo

Avaliar o impacto dos descontos na lucratividade da empresa e identificar possíveis riscos na política atual de precificação.

## 📂 Estrutura do Projeto

- **01_Data_Preparation.sql** → Criação da base de dados e correção de inconsistências nos valores importados.  
- **02_Discount_Strategy_Analysis.sql** → Análise estratégica do impacto dos descontos na margem e na lucratividade.


## 📅 Período Analisado

Pedidos realizados entre janeiro de 2014 e dezembro de 2017.

## 🧠 Pergunta de Negócio

Descontos maiores estão contribuindo para aumento sustentável da lucratividade ou estão reduzindo a margem da empresa?

## 📈 Metodologia

A análise foi conduzida de forma progressiva, partindo de uma visão geral da empresa e avançando para análises segmentadas por nível de desconto, categoria e subcategoria.

Foram realizadas as seguintes etapas:

- Cálculo da margem geral da empresa  
- Análise do volume de vendas por nível de desconto  
- Cálculo da margem por desconto  
- Análise detalhada por categoria  
- Diagnóstico aprofundado por subcategoria  

A margem foi calculada utilizando a fórmula:

`SUM(Profit) / SUM(Sales)`

## 🔍 Principais Insights

- Descontos acima de 20% reduzem significativamente a margem.  
- A categoria **Furniture** apresenta alta sensibilidade a descontos.  
- A categoria **Technology** demonstra maior resiliência à aplicação de descontos.  
- Descontos superiores a 30% apresentam recorrência de prejuízo.

## ⚠ Problema Identificado

A política de descontos é aplicada de forma uniforme, porém o impacto financeiro varia significativamente entre categorias, resultando em erosão de margem em determinados segmentos.

## 💡 Recomendações Estratégicas

- Limitar descontos da categoria **Furniture** a no máximo 20%.  
- Revisar campanhas que utilizam descontos superiores a 30%.  
- Considerar a implementação de uma política de desconto segmentada por categoria.

## 🛠 Ferramentas Utilizadas

- SQL Server
- Google Sheets (padronização de datas e correção de formatação/escala de valores monetários antes da carga)
- Agregações (SUM, GROUP BY)  
- Cálculo de margem percentual  
- Análise exploratória estruturada  

## 📌 Conclusão

A análise indica que a política atual de descontos pode comprometer a lucratividade em determinados segmentos, especialmente na categoria **Furniture**.  

A adoção de uma política segmentada por categoria tende a preservar margem, reduzir prejuízos recorrentes e melhorar a sustentabilidade financeira da empresa.

## 📎 Fonte dos Dados

Dataset **“Superstore”**, disponibilizado na plataforma Kaggle para fins educacionais.
