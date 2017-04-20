DELIMITER $$
CREATE PROCEDURE sp_add_ingresso(IN p_letra_assento CHAR(1), IN p_n_assento INTEGER, IN p_cd_sessao INTEGER, IN p_cd_venda INTEGER)
BEGIN
    DECLARE v_vl_ingresso FLOAT DEFAULT 0;
    DECLARE v_cd_sessao FLOAT DEFAULT 0;
    DECLARE v_cd_tipo_sala FLOAT DEFAULT 0;
    DECLARE v_cd_sala FLOAT DEFAULT 0;

    SELECT cd_sala INTO v_cd_sala FROM sessao WHERE cd_sessao = p_cd_sessao;
    SELECT cd_tipo_sala INTO v_cd_tipo_sala FROM sala WHERE cd_sala = v_cd_sala;
    SELECT vl_tipo_sala INTO v_vl_ingresso FROM tipo_sala WHERE cd_tipo_sala = v_cd_tipo_sala;

    IF p_letra_assento NOT IN(SELECT cd_letra_assento FROM assento WHERE cd_sala = v_cd_sala) THEN
	SELECT 'Nao';
	SIGNAL sqlstate '45100'
	    SET MESSAGE_TEXT = 'Assento inexistente na sala';
    	
    ELSE
	INSERT INTO ingresso (dt_emissao, cd_numero_assento, cd_letra_assento, cd_sessao, cd_venda, 	vl_ingresso ) VALUES (NOW(), p_n_assento, p_letra_assento, p_cd_sessao, p_cd_venda, v_vl_ingresso); 
    END IF;
END$$
DELIMITER ;


