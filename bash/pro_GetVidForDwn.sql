DELIMITER //

DROP PROCEDURE IF EXISTS `GetVidForDwn`;

CREATE PROCEDURE `GetVidForDwn` ()
BEGIN

	DECLARE varID INT;
	DECLARE varURL VARCHAR(200);
	
	SELECT 
	  `id`
	INTO 
	  varID 
	FROM 
	  `dwnvidtbl` 
	WHERE 
	  `done` != 'X'
	LIMIT 1
;	

	SELECT 
	  `url`
	INTO 
	  varURL 
	FROM 
	  `dwnvidtbl` 
	WHERE
	  `id` = varID
;

	UPDATE
	  `dwnvidtbl`
	SET
	  `done` = 'X'
	WHERE
	  `id` = varID
;

	SELECT
	  varID
	  ,varURL

;
END//
