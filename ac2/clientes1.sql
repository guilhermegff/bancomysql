DELIMITER $$
CREATE PROCEDURE CLIENTES()
BEGIN

    SET @i = 0;
    SET @@AUTO_INCREMENT_INCREMENT = 1;
	WHILE @i  <= 100 DO
	
	SET @NOME := (ELT(FLOOR(1 + RAND() * 10), 'Jose', 'Maria', 'Renato', 'Augusto', 'Rodrigo', 'Fernando', 		'Alissa', 'Paulo', 'Marcela', 'Alexandre'));
	SET @SOBRENOME := (ELT(FLOOR(1 + RAND() * 10), 'Fonseca', 'Da Silva', 'Frigata', 'Stein', 'Heinz', 		'Hertz', 'Gates', 'Camargo', 'Nassau', 'Fuji'));
	SET @SENHA := (LEFT(UUID(), 10));
	SET @RG := (FLOOR(1000000000000 + RAND() * (3000000000000 - 1000000000000)));
	SET @CPF := (FLOOR(10000000000000 + RAND() * (30000000000000 - 10000000000000)));
	SET @SEXO := (ELT(FLOOR(1 + RAND() * 2), 'M', 'F'));
	SET @MIN := '1987-01-01';
	SET @MAX := '2017-12-31';
	SET @NASC := TIMESTAMPADD(DAY, FLOOR(RAND() * TIMESTAMPDIFF(DAY, @MIN, @MAX)), @MIN);
	SET @EMAIL := CONCAT(LOWER(@NOME), '.', LOWER(@SOBRENOME), (ELT(FLOOR(1 + RAND() * 10), 	'@terra.com.br', '@ig.com.br', '@gmail.com.br', '@hotmail.com', '@yahoo.com.br', 	'@bol.com.br', 		'@uol.com.br', '@zaz.com.br', '@geocities.com.br', '@outlook.com.br')));
	SET @ESTRE := (FLOOR(1 + RAND() * 5));

    	INSERT INTO cliente (nm_cliente, nu_rg_cliente, nu_cpf_cliente, dt_nasc_cliente, ds_sexo, ds_email, 		ds_senha, nu_estrelas) VALUES (CONCAT(@NOME, ' ', @SOBRENOME), @RG, @CPF, @NASC, @SEXO, @EMAIL, 	@SENHA, @ESTRE);

    	SET  @i := @i + 1;
	END WHILE;

END $$
DELIMITER ;
