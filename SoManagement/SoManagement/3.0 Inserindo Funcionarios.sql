/*
		Adi��o dos dados dos funcionarios
*/

BEGIN TRAN

INSERT INTO tblFuncionario (NomeFuncionario, idDepartamento, idCargo)
VALUES ('�lvaro Dayle',1,1),('Victor Hiroshi',4,1),('Maria Joana',7,4),
('Luciana Santos',7,4);

COMMIT
ROLLBACK
