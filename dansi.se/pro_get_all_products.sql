DELIMITER //
/*
|-------------------------------------------------------- 
| GetAllProducts
| 
| Returns all the products from the products table.
|-------------------------------------------------------- 
*/

DROP PROCEDURE IF EXISTS GetAllProducts;

CREATE PROCEDURE `GetAllProducts` ()

BEGIN
	SELECT 
		p.id_product
		,p.name
		,p.price
		,p.descript
		,p.img
		,p.img_thumb
		,s.num
	FROM
		products p
		,sales s
	WHERE
		p.id_product = s.id_product
;
END//
