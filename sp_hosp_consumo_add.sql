DELIMITER $$
CREATE PROCEDURE sp_hosp_consumo_add(IN p_cd_hospedagem INTEGER, IN p_cd_produto INTEGER)
BEGIN

DECLARE v_vl_consumo DECIMAL(7,2) DEFAULT 0;


SELECT vl_produto INTO v_vl_consumo FROM tb_produto WHERE cd_produto = p_cd_produto;

INSERT INTO tb_consumo (dt_consumo, vl_consumo, cd_produto, cd_servico, cd_hospedagem) 
VALUES (NOW(), v_vl_consumo, p_cd_produto, 1, p_cd_hospedagem);

SELECT * FROM tb_consumo;

END$$
DELIMITER ;






