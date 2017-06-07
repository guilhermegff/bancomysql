DELIMITER $$
CREATE PROCEDURE sp_hospedagem_checkout(IN p_cd_hospedagem INTEGER, IN p_n_dias INTEGER)
BEGIN

DECLARE v_vl_hospedagem DECIMAL(7,2) DEFAULT 0;
DECLARE v_cd_quarto INTEGER DEFAULT 0;

SELECT cd_quarto INTO v_cd_quarto FROM tb_hospedagem WHERE cd_hospedagem = p_cd_hospedagem;

SELECT vl_tipo_quarto_diaria INTO v_vl_hospedagem FROM tb_tipo_quarto WHERE cd_tipo_quarto = (
	SELECT qua.cd_tipo_quarto FROM tb_quarto qua WHERE cd_quarto = v_cd_quarto);

UPDATE tb_quarto SET fg_quarto_situacao = 'Limpeza' WHERE cd_quarto = v_cd_quarto;

UPDATE tb_hospedagem SET dt_hospedagem_fim = DATE_ADD(dt_hospedagem_inicio, INTERVAL p_n_dias DAY), 		vl_hospedagem = ((v_vl_hospedagem * p_n_dias) + (SELECT vl_consumo FROM tb_consumo WHERE cd_hospedagem = p_cd_hospedagem));

SELECT v_vl_hospedagem, v_cd_quarto;

SELECT * FROM tb_hospedagem;

END$$
DELIMITER ;
