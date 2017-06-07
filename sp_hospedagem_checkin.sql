DELIMITER $$
CREATE PROCEDURE sp_hospedagem_checkin(OUT p_cd_hospedagem INTEGER, IN p_cd_cliente INTEGER, IN p_cd_tipo_quarto INTEGER)

BEGIN

DECLARE v_cd_quarto INTEGER;

SELECT cd_quarto INTO v_cd_quarto FROM tb_quarto WHERE cd_tipo_quarto = p_cd_tipo_quarto AND fg_quarto_situacao = 'Ativo';

INSERT INTO tb_hospedagem (cd_cliente, dt_hospedagem_inicio, dt_hospedagem_fim, vl_hospedagem, cd_quarto)
VALUES (p_cd_cliente, NOW(), null, null, v_cd_quarto);

UPDATE tb_quarto SET fg_quarto_situacao = 'Ocupado' WHERE cd_quarto = v_cd_quarto;

SELECT cd_hospedagem FROM tb_hospedagem INTO p_cd_hospedagem;

SELECT * FROM tb_hospedagem;

END$$
DELIMITER ;
