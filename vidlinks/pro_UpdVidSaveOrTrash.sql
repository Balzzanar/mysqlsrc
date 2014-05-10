DELIMITER //
/*----------------------------------
| UpdVidSaveOrTrash
| 
| inID - Id of the vid to upd
| inSaveOrTrashFlg - 0=Trash, 1=Save
|-----------------------------------*/

DROP PROCEDURE IF EXISTS `UpdVidFOrSave`;
DROP PROCEDURE IF EXISTS `UpdVidFOrTrash`;
DROP PROCEDURE IF EXISTS `UpdVidSaveOrTrash`;

CREATE PROCEDURE `UpdVidSaveOrTrash` (IN inID INT, IN inSaveOrTrashFlg INT)
BEGIN

UPDATE
  vidlinks v
SET
  v.keep = IF (inSaveOrTrashFlg > 0, 'X', '')
  ,v.del_flg = IF (inSaveOrTrashFlg > 0, '', 'X')
WHERE
  v.id = inID
;

END//
