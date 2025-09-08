SELECT DISTINCT p.idProducto, p.nombre, p.precio
FROM productos p
INNER JOIN ventas v ON p.idProducto = v.idProducto;
	