
--FASE DE CRIAÇÃO--

USE SoManagement;

--Criando o Banco de Dados

CREATE DATABASE SoManagement;

--Criando Tabelas

CREATE TABLE tblCargo(
	
	idCargo		smallint			identity
	CONSTRAINT PK_tblCargo_idCargo
	PRIMARY KEY (idCargo),

	NomeCargo	varchar(50)
);

CREATE TABLE tblDepartamento(

	idDepartamento		smallint		identity
	CONSTRAINT PK_tblDepartamento_idDepartamento
	PRIMARY KEY (idDepartamento),

	NomeDepartamento	varchar(50),
);

CREATE TABLE tblProdutos(

	idProduto		smallint		identity
	CONSTRAINT PK_tblProdutos_idProduto
	PRIMARY KEY (IdProduto),

	idDepartamento	smallint
	CONSTRAINT FK_tblProdutos_idDepartamento
	FOREIGN KEY (idDepartamento)
	REFERENCES tblDepartamento(idDepartamento),

	TipoProduto		varchar(50),
);

CREATE TABLE tblLocalidade(

	idLocalidade		smallint		identity
	CONSTRAINT PK_tblLocalidade_idLocalidade
	PRIMARY KEY (idLocalidade),

	UF					char(2)
);


CREATE TABLE tblFuncionario(

	idFuncionario		smallint		identity
	CONSTRAINT PK_tblFuncionario_idFuncionario
	PRIMARY KEY (idFuncionario),

	NomeFuncionario		varchar(100)	NOT NULL,

	idDepartamento		smallint
	CONSTRAINT FK_tblFuncionario_idDepartamento
	FOREIGN KEY (idDepartamento)
	REFERENCES tblDepartamento(idDepartamento),

	idCargo				smallint
	CONSTRAINT FK_tblFuncionario_idCargo
	FOREIGN KEY (idCargo)
	REFERENCES tblCargo(idCargo),

	Endereço			varchar(100),
	CEP					char(8),

	idLocalidade		smallint
	CONSTRAINT FK_tblLocalidade_idLocalidade
	FOREIGN KEY (idLocalidade)
	REFERENCES tblLocalidade(idLocalidade),

	Telefone			varchar(15),

	Cpf					char(11)
	CONSTRAINT CHK_tblFuncionario_Cpf
	CHECK(LEN(Cpf) = 11),

	Email				varchar(100),
	Admissao			date,
	Salario				money,
);


CREATE TABLE tblEntradas(
	
	Os					bigint		identity
	CONSTRAINT PK_tblEntradas_Os
	PRIMARY KEY (Os),

	NomeCliente			varchar(50),

	CpfCliente			char(11)

	CONSTRAINT CHK_tblEntradas_CpfCliente
	CHECK (LEN(CpfCliente) = 11),

	TelefoneCliente		varchar(15),
	EmailCliente		varchar(100),
	EndereçoCliente		varchar(100),
	CepCliente			char(8),

	idLocalidade		smallint
	CONSTRAINT FK_tblEntradas_idLocalidade
	FOREIGN KEY (idLocalidade)
	REFERENCES tblLocalidade (idLocalidade),

	ModeloAparelho		varchar(50),

	idProduto			smallint
	CONSTRAINT FK_tblEntradas_idProduto
	FOREIGN KEY (idProduto)
	REFERENCES tblProdutos (idProduto),

	ImeiCliente			char(15)

	CONSTRAINT CHK_tblEntradas_ImeiCliente
	CHECK (LEN(ImeiCliente) = 15),

	SerialCliente		varchar(50),

	idFuncionario		smallint
	CONSTRAINT FK_tblEntradas_idFuncionario
	FOREIGN KEY (idFuncionario)
	REFERENCES tblFuncionario (idFuncionario),

	DescriçãoDefeito		varchar(50),
	DescriçãoAparelho		varchar(255)

);

CREATE TABLE tblCredeciais(

	idFuncionario		smallint
	CONSTRAINT FK_tblCredenciais_idFuncionario
	FOREIGN KEY (idFuncionario)
	REFERENCES tblFuncionario(idFuncionario),

	Usuário				varchar(50),
	Senha				varchar(50)
);
