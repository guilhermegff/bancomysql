DELIMITER $$
CREATE PROCEDURE sp_add_sessao (IN p_dt_inicio DATE, IN p_cd_sala INTEGER, IN p_cd_programacao INTEGER)
BEGIN
    DECLARE v_dt_inicio DATE;
    DECLARE v_dt_fim DATE;
    DECLARE v_cd_sala INTEGER;
    DECLARE v_cd_programacao INTEGER;
    DECLARE v_cd_complexo CHAR(60);
    DECLARE v_cd_sessao INTEGER;

SELECT dt_inicio, dt_fim, cd_programacao INTO v_dt_inicio, v_dt_fim, v_cd_programacao FROM programacao WHERE cd_programacao = p_cd_programacao;

SELECT cd_sala INTO v_cd_sala FROM sala WHERE cd_sala = p_cd_sala;

    IF p_cd_sala NOT IN(SELECT cd_sala FROM sala) THEN
	SELECT 'Nao';
	SIGNAL sqlstate '45100'
	    SET MESSAGE_TEXT = 'Sala inexistente';
    ELSEIF v_cd_programacao NOT IN(SELECT cd_programacao FROM programacao) THEN
	SELECT 'Nao';
	SIGNAL sqlstate '45100'
	    SET MESSAGE_TEXT = 'Sessao inexistente';
    ELSEIF p_dt_inicio NOT BETWEEN v_dt_inicio AND v_dt_fim THEN
	SELECT 'Nao';
	SIGNAL sqlstate '45100'
	    SET MESSAGE_TEXT = 'Data Incorreta';
    END IF;
      
INSERT INTO sessao (dt_sessao_inicio, dt_sessao_fim, cd_sala, cd_programacao) VALUES (p_dt_inicio, DATE_ADD(dt_sessao_inicio, INTERVAL 2 HOUR), v_cd_sala, v_cd_programacao);
SELECT LAST_INSERT_ID() INTO v_cd_sessao;

    SELECT fil.nm_filme "Nome do Filme",
    sal.nm_sala "Nome da Sala",
    compl.nm_complexo "Nome do Complexo",
    ses.dt_sessao_inicio "Data de Inicio",
    ses.dt_sessao_fim "Data Fim"
    FROM sessao ses
    INNER JOIN programacao prog ON prog.cd_programacao = ses.cd_programacao
    INNER JOIN filme fil ON fil.cd_filme = prog.cd_filme
    INNER JOIN complexo compl ON compl.cd_complexo = prog.cd_complexo
    INNER JOIN sala sal ON sal.cd_sala = ses.cd_sala
	WHERE cd_sessao = v_cd_sessao;
END$$
DELIMITER ;
