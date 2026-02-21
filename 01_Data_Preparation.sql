/* =====================================================
   PROJETO: Superstore - Preparação de Dados
   OBJETIVO: Criar estrutura da base e corrigir valores
   OBS: Valores de Sales, Profit e Discount foram 
        importados com escala incorreta.
===================================================== */

CREATE DATABASE SuperstoreDB;
USE SuperstoreDB;

-- CRIANDO TABELA
CREATE TABLE superstore (
    Row_ID INT PRIMARY KEY,
    Order_ID NVARCHAR(100),
    Order_Date DATE,
    Ship_Date DATE,
    Ship_Mode NVARCHAR(100),
    Customer_ID NVARCHAR(100),
    Customer_Name NVARCHAR(255),
    Segment NVARCHAR(100),
    Country NVARCHAR(100),
    City NVARCHAR(100),
    State_Province NVARCHAR(100),
    Postal_Code NVARCHAR(50),
    Region NVARCHAR(100),
    Product_ID NVARCHAR(100),
    Category NVARCHAR(100),
    Sub_Category NVARCHAR(100),
    Product_Name NVARCHAR(500),
    Sales DECIMAL(10,2),
    Quantity INT,
    Discount DECIMAL(4,2),
    Profit DECIMAL(10,2)
);


-- Ajuste de escala: valores estavam 100x maiores que o correto
UPDATE superstore
SET Sales = Sales / 100;

UPDATE superstore
SET Profit = Profit / 100;

UPDATE superstore
SET Discount = Discount / 100;

-- Ajuste adicional para registros onde o desconto foi 
-- importado com uma casa decimal incorreta
UPDATE superstore
SET Discount = Discount * 10
WHERE Discount < 0.10;