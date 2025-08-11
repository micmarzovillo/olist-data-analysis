SELECT
	COUNT(o.order_id) AS total_orders,
	c.customer_state,
	CASE c.customer_state
        WHEN 'AC' THEN 'Acre'
        WHEN 'AL' THEN 'Alagoas'
        WHEN 'AP' THEN 'Amapá'
        WHEN 'AM' THEN 'Amazonas'
        WHEN 'BA' THEN 'Bahia'
        WHEN 'CE' THEN 'Ceará'
        WHEN 'DF' THEN 'Distrito Federal'
        WHEN 'ES' THEN 'Espírito Santo'
        WHEN 'GO' THEN 'Goiás'
        WHEN 'MA' THEN 'Maranhão'
        WHEN 'MT' THEN 'Mato Grosso'
        WHEN 'MS' THEN 'Mato Grosso do Sul'
        WHEN 'MG' THEN 'Minas Gerais'
        WHEN 'PA' THEN 'Pará'
        WHEN 'PB' THEN 'Paraíba'
        WHEN 'PR' THEN 'Paraná'
        WHEN 'PE' THEN 'Pernambuco'
        WHEN 'PI' THEN 'Piauí'
        WHEN 'RJ' THEN 'Rio de Janeiro'
        WHEN 'RN' THEN 'Rio Grande do Norte'
        WHEN 'RS' THEN 'Rio Grande do Sul'
        WHEN 'RO' THEN 'Rondônia'
        WHEN 'RR' THEN 'Roraima'
        WHEN 'SC' THEN 'Santa Catarina'
        WHEN 'SP' THEN 'São Paulo'
        WHEN 'SE' THEN 'Sergipe'
        WHEN 'TO' THEN 'Tocantins'
        ELSE c.customer_state
    END AS state_full_name,
	DATE_TRUNC('year', order_purchase_timestamp)::date AS year
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_state, year
ORDER BY total_orders DESC, year;;