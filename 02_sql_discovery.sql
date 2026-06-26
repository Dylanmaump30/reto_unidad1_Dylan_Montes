    
    
    query1 = """ 
    SELECT DISTINCT productos AS ProductosUnicos 
    FROM ventas;
    """

    query2 = """ 
    SELECT *
    FROM ventas
    WHERE fecha BETWEEN '01/01/2024' AND '31/03/2024';
    AND cantidad > 5
    """

    query3 = """
    SELECT vendedor, 
           SUM(cantidad*precios) AS ingreso_total
    FROM ventas
    GROUP BY vendedor
    HAVING SUM(cantidad * precio) > 10000;
    """
    query4 = """
    SELECT categoria,
           count(order_id) AS num_ventas,ss
           sum(cantidad) AS total_ventas,
           avg(precio_unitario) AS prom_precio
    FROM ventas;
    """
    createTableVendedores = """
    CREATE TABLE vendedores (
        vendedor  TEXT PRIMARY KEY,
        zona TEXT,
        meta_mensual REAL
    );
    """

    query5 = """
    SELECT
        m.vendedor,
        COALESCE(SUM(v.cantidad * v.precio_unitario), 0) AS ingreso_total,
        m.meta_mensual,
        ROUND((COALESCE(SUM(v.cantidad * v.precio_unitario), 0) * 100.0) / m.meta_mensual,2) AS porcentaje_cumplimiento
    FROM vendedores m
    LEFT JOIN ventas v 
        ON m.vendedor = v.vendedor
    GROUP BY
        m.vendedor,
        m.meta_mensual; 
    """