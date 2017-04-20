DELIMITER $$
CREATE PROCEDURE sp_add_filme_genero (IN v_cd_filme INTEGER, IN v_cd_genero INTEGER)
BEGIN 
INSERT INTO filme_genero (cd_filme, cd_genero) VALUES (v_cd_filme, v_cd_genero);
SELECT fil.nm_filme "Filme", gen.nm_genero "Genero" FROM filme_genero fgen
INNER JOIN filme fil ON fil.cd_filme = fgen.cd_filme
INNER JOIN genero gen ON gen.cd_genero = fgen.cd_genero;

END$$
DELIMITER ;




    
