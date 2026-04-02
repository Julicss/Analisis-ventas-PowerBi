USE POS_DB;

SELECT 
    v.IdVenta,
    v.Fecha,
    c.Nombre AS Cliente,
    p.NombreProducto,
    dv.Cantidad,
    dv.Precio,
    (dv.Cantidad * dv.Precio) AS Total
FROM Ventas v
JOIN Clientes c ON v.IdCliente = c.IdCliente
JOIN DetallesVenta dv ON v.IdVenta = dv.IdVenta
JOIN Productos p ON dv.IdProducto = p.IdProducto;