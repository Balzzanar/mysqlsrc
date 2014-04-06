DELIMITER //
/*
|-------------------------------------------------------- 
| Products
| 
| Table to hold all the products for the site.
|-------------------------------------------------------- 
*/

CREATE TABLE IF NOT EXISTS `products`
(
  `id_product`  INT NOT NULL AUTO_INCREMENT	/* Internal product id */
 ,`name`    	VARCHAR(250)				/* Name of the product */
 ,`price`    	INT 						/* Price of the product */
 ,`descript`   	TEXT 						/* Product description */
 ,`img`     	VARCHAR(250) 				/* Name of image */
 ,`img_thumb`	VARCHAR(250) 				/* Name of thumbnail image */
 ,PRIMARY KEY (`id_product`)
)

//
