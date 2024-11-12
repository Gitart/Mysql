CREATE PROCEDURE CalculateMonthlyBalance(IN target_date DATE, IN ved_filter INT)
BEGIN
    DECLARE start_date DATE;
    DECLARE end_date DATE;
    
    -- Определяем начало и конец месяца для целевой даты
    SET start_date = DATE_FORMAT(target_date, '%Y-%m-01');
    SET end_date = LAST_DAY(target_date);
    
    -- Подсчитываем баланс на начало месяца, обороты за месяц и остаток на конец месяца,
    -- с фильтрацией по ved_id
    SELECT 
        i.stock_id,
        i.product_id,
        SUM(CASE 
                WHEN o.created_at < start_date THEN i.qty 
                ELSE 0 
            END) AS balance_start,
        SUM(CASE 
                WHEN o.created_at BETWEEN start_date AND end_date THEN i.qty 
                ELSE 0 
            END) AS turnover,
        SUM(i.qty) AS balance_end
    FROM 
        items i
    JOIN 
        orders o ON i.order_id = o.id
    WHERE 
        o.ved_id = ved_filter  -- Добавлено условие фильтрации по ved_id
    GROUP BY 
        i.stock_id, i.product_id
    ORDER BY 
        i.stock_id, i.product_id;

END //
