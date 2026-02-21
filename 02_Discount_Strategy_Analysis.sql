/* =====================================================
   PROJETO: Diagnóstico da Política de Descontos
   OBJETIVO: Avaliar impacto dos descontos na margem
   DATASET: Superstore
===================================================== */


/* -----------------------------------------------------
   1. VISÃO GERAL
   Receita Total, Lucro Total e Margem Geral
----------------------------------------------------- */
SELECT 
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    (SUM(Profit) / SUM(Sales)) * 100 AS Overall_Margin
FROM superstore;


/* -----------------------------------------------------
   2. DISTRIBUIÇÃO DE DESCONTOS
   Volume de vendas por nível de desconto
----------------------------------------------------- */
SELECT 
    Discount,
    COUNT(*) AS Total_Orders,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Discount
ORDER BY Discount;


/* -----------------------------------------------------
   3. IMPACTO DO DESCONTO NA LUCRATIVIDADE
   Margem por nível de desconto
----------------------------------------------------- */
SELECT 
    Discount,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    (SUM(Profit) / SUM(Sales)) * 100 AS Margin_Percentage
FROM superstore
GROUP BY Discount
ORDER BY Discount;


/* -----------------------------------------------------
   4. ANÁLISE POR CATEGORIA
   Margem por desconto e categoria
----------------------------------------------------- */
SELECT 
    Discount,
    Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    (SUM(Profit) / SUM(Sales)) * 100 AS Margin_Percentage
FROM superstore
GROUP BY Discount, Category
ORDER BY Discount, Category;


/* -----------------------------------------------------
   5. DIAGNÓSTICO DETALHADO
   Margem por desconto, categoria e subcategoria
----------------------------------------------------- */
SELECT 
    Discount,
    Category,
    Sub_Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    (SUM(Profit) / SUM(Sales)) * 100 AS Margin_Percentage
FROM superstore
GROUP BY Discount, Category, Sub_Category
ORDER BY Discount, Category, Sub_Category;


/*
INSIGHT:
A análise indica que descontos superiores a 20% reduzem significativamente a margem,
com impacto mais acentuado na categoria Furniture.

RECOMENDAÇÃO:
Revisar política de descontos por categoria.
*/