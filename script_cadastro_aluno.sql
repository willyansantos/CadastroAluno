CREATE DATABASE CadastroAluno;
GO

use CadastroAluno;
GO
CREATE TABLE dbo.UnidadeFederativa
(
	UnidadeFederativaID INT NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	UF CHAR(2) NOT NULL
);
GO
ALTER TABLE dbo.UnidadeFederativa ADD CONSTRAINT PK_UnidadeFederativaID PRIMARY KEY(UnidadeFederativaID);
GO

INSERT INTO dbo.UnidadeFederativa (UnidadeFederativaID, UF, Nome) VALUES (1, 'RS','Rio Grande do Sul');
INSERT INTO dbo.UnidadeFederativa (UnidadeFederativaID, UF, Nome) VALUES (2, 'SC','Santa Catarina');
INSERT INTO dbo.UnidadeFederativa (UnidadeFederativaID, UF, Nome) VALUES (3, 'PR','Paraná');
INSERT INTO dbo.UnidadeFederativa (UnidadeFederativaID, UF, Nome) VALUES (4, 'SP','São Paulo');
INSERT INTO dbo.UnidadeFederativa (UnidadeFederativaID, UF, Nome) VALUES (5, 'MG','Minas Gerais');
INSERT INTO dbo.UnidadeFederativa (UnidadeFederativaID, UF, Nome) VALUES (6, 'RJ','Rio de Janeiro');
INSERT INTO dbo.UnidadeFederativa (UnidadeFederativaID, UF, Nome) VALUES (7, 'ES','Espírito Santo');
INSERT INTO dbo.UnidadeFederativa (UnidadeFederativaID, UF, Nome) VALUES (8, 'MS','Mato Grosso do Sul');
INSERT INTO dbo.UnidadeFederativa (UnidadeFederativaID, UF, Nome) VALUES (9, 'MT','Mato Grosso');
INSERT INTO dbo.UnidadeFederativa (UnidadeFederativaID, UF, Nome) VALUES (10, 'GO','Goiás');
INSERT INTO dbo.UnidadeFederativa (UnidadeFederativaID, UF, Nome) VALUES (11, 'TO','Tocantins');
INSERT INTO dbo.UnidadeFederativa (UnidadeFederativaID, UF, Nome) VALUES (12, 'PA','Pará');
INSERT INTO dbo.UnidadeFederativa (UnidadeFederativaID, UF, Nome) VALUES (13, 'AM','Amazonas');
INSERT INTO dbo.UnidadeFederativa (UnidadeFederativaID, UF, Nome) VALUES (14, 'RO','Rondônia');
INSERT INTO dbo.UnidadeFederativa (UnidadeFederativaID, UF, Nome) VALUES (15, 'RR','Roraima');
INSERT INTO dbo.UnidadeFederativa (UnidadeFederativaID, UF, Nome) VALUES (16, 'AC','Acre');
INSERT INTO dbo.UnidadeFederativa (UnidadeFederativaID, UF, Nome) VALUES (17, 'DF','Distrito Federal');
INSERT INTO dbo.UnidadeFederativa (UnidadeFederativaID, UF, Nome) VALUES (18, 'BA','Bahia');
INSERT INTO dbo.UnidadeFederativa (UnidadeFederativaID, UF, Nome) VALUES (19, 'SE','Sergipe');
INSERT INTO dbo.UnidadeFederativa (UnidadeFederativaID, UF, Nome) VALUES (20, 'CE','Ceará');
INSERT INTO dbo.UnidadeFederativa (UnidadeFederativaID, UF, Nome) VALUES (21, 'PI','Piauí');
INSERT INTO dbo.UnidadeFederativa (UnidadeFederativaID, UF, Nome) VALUES (22, 'PB','Paraíba');
INSERT INTO dbo.UnidadeFederativa (UnidadeFederativaID, UF, Nome) VALUES (23, 'RN','Rio Grande do Norte');
INSERT INTO dbo.UnidadeFederativa (UnidadeFederativaID, UF, Nome) VALUES (24, 'AL','Alagoas');
INSERT INTO dbo.UnidadeFederativa (UnidadeFederativaID, UF, Nome) VALUES (25, 'MA','Maranhão');
INSERT INTO dbo.UnidadeFederativa (UnidadeFederativaID, UF, Nome) VALUES (26, 'PE','Pernambuco');
INSERT INTO dbo.UnidadeFederativa (UnidadeFederativaID, UF, Nome) VALUES (27, 'AP','Amapá');

CREATE TABLE dbo.Municipio
(
	MunicipioID INT IDENTITY,
	Nome VARCHAR(200) NOT NULL,
	UnidadeFederativaID INT NOT NULL,
	DataCadastro DATETIME NOT NULL,
    UsuarioCadastroID INT NULL,
    DataAtualizacao DATETIME NULL,
    UsuarioAtualizacaoID INT NULL
);
GO
ALTER TABLE dbo.Municipio ADD CONSTRAINT PK_MunicipioID PRIMARY KEY(MunicipioID);
GO
ALTER TABLE dbo.Municipio ADD CONSTRAINT FK_Municipio_UnidadeFederativaID FOREIGN KEY (UnidadeFederativaID) REFERENCES dbo.UnidadeFederativa(UnidadeFederativaID);
GO

--DECLARE @unidadeFederativaID INT = (SELECT uf.UnidadeFederativaID FROM dbo.UnidadeFederativa uf WHERE uf.UF = 'MS')
--INSERT INTO dbo.Municipio (Nome, UnidadeFederativaID, DataCadastro) VALUES('Água Clara', @unidadeFederativaID, GETDATE());
--INSERT INTO dbo.Municipio (Nome, UnidadeFederativaID, DataCadastro) VALUES('Alcinópolis', @unidadeFederativaID, GETDATE());
--INSERT INTO dbo.Municipio (Nome, UnidadeFederativaID, DataCadastro) VALUES('Amambai', @unidadeFederativaID, GETDATE());
--INSERT INTO dbo.Municipio (Nome, UnidadeFederativaID, DataCadastro) VALUES('Anastácio', @unidadeFederativaID, GETDATE());
--INSERT INTO dbo.Municipio (Nome, UnidadeFederativaID, DataCadastro) VALUES('Anaurilândia', @unidadeFederativaID, GETDATE());
--INSERT INTO dbo.Municipio (Nome, UnidadeFederativaID, DataCadastro) VALUES('Angélica', @unidadeFederativaID, GETDATE());
--INSERT INTO dbo.Municipio (Nome, UnidadeFederativaID, DataCadastro) VALUES('Antônio João', @unidadeFederativaID, GETDATE());
--INSERT INTO dbo.Municipio (Nome, UnidadeFederativaID, DataCadastro) VALUES('Aparecida do Taboado', @unidadeFederativaID, GETDATE());
--INSERT INTO dbo.Municipio (Nome, UnidadeFederativaID, DataCadastro) VALUES('Aquidauana', @unidadeFederativaID, GETDATE());
--INSERT INTO dbo.Municipio (Nome, UnidadeFederativaID, DataCadastro) VALUES('Aral Moreira', @unidadeFederativaID, GETDATE());
--INSERT INTO dbo.Municipio (Nome, UnidadeFederativaID, DataCadastro) VALUES('Bandeirantes', @unidadeFederativaID, GETDATE());
--INSERT INTO dbo.Municipio (Nome, UnidadeFederativaID, DataCadastro) VALUES('Bataguassu', @unidadeFederativaID, GETDATE());
--INSERT INTO dbo.Municipio (Nome, UnidadeFederativaID, DataCadastro) VALUES('Batayporã', @unidadeFederativaID, GETDATE());
--INSERT INTO dbo.Municipio (Nome, UnidadeFederativaID, DataCadastro) VALUES('Bela Vista', @unidadeFederativaID, GETDATE());
--INSERT INTO dbo.Municipio (Nome, UnidadeFederativaID, DataCadastro) VALUES('Bodoquena', @unidadeFederativaID, GETDATE());
--INSERT INTO dbo.Municipio (Nome, UnidadeFederativaID, DataCadastro) VALUES('Bonito', @unidadeFederativaID, GETDATE());
--INSERT INTO dbo.Municipio (Nome, UnidadeFederativaID, DataCadastro) VALUES('Brasilândia', @unidadeFederativaID, GETDATE());
--INSERT INTO dbo.Municipio (Nome, UnidadeFederativaID, DataCadastro) VALUES('Caarapó', @unidadeFederativaID, GETDATE());
--INSERT INTO dbo.Municipio (Nome, UnidadeFederativaID, DataCadastro) VALUES('Camapuã', @unidadeFederativaID, GETDATE());
--INSERT INTO dbo.Municipio (Nome, UnidadeFederativaID, DataCadastro) VALUES('Campo Grande', @unidadeFederativaID, GETDATE());

CREATE TABLE dbo.Valor
(
	ValorID INT NOT NULL,
	Nome VARCHAR(100) NOT NULL
);
GO
ALTER TABLE dbo.Valor ADD CONSTRAINT PK_Valor PRIMARY KEY(ValorID);
GO

INSERT INTO dbo.Valor (ValorID, Nome) VALUES(1, 'Feminino');
INSERT INTO dbo.Valor (ValorID, Nome) VALUES(2, 'Masculino');
INSERT INTO dbo.Valor (ValorID, Nome) VALUES(3, 'Comercial');
INSERT INTO dbo.Valor (ValorID, Nome) VALUES(4, 'Residencial');
INSERT INTO dbo.Valor (ValorID, Nome) VALUES(5, 'Celular');
INSERT INTO dbo.Valor (ValorID, Nome) VALUES(6, 'Recado');
INSERT INTO dbo.Valor (ValorID, Nome) VALUES(7, 'Fax');
INSERT INTO dbo.Valor (ValorID, Nome) VALUES(8, 'Claro');
INSERT INTO dbo.Valor (ValorID, Nome) VALUES(9, 'Vivo');
INSERT INTO dbo.Valor (ValorID, Nome) VALUES(10, 'Oi');
INSERT INTO dbo.Valor (ValorID, Nome) VALUES(11, 'Tim');

CREATE TABLE dbo.Pessoa
(
	PessoaID INT IDENTITY,
    Nome VARCHAR(200) NOT NULL,
    Rg VARCHAR(10) NOT NULL,
    Cpf VARCHAR(11) NOT NULL,
    Email VARCHAR(80) NULL,
    DataNascimento DATE NOT NULL,
    TipoSexo INT NOT NULL,
    Profissao VARCHAR(100) NULL,
    DataCadastro DATETIME NOT NULL,
    UsuarioCadastroID INT NULL,
    DataAtualizacao DATETIME NULL,
    UsuarioAtualizacaoID INT NULL
)
GO

ALTER TABLE dbo.Pessoa ADD CONSTRAINT PK_PessoaID PRIMARY KEY(PessoaID);
GO
ALTER TABLE dbo.Pessoa ADD CONSTRAINT FK_Pessoa_TipoSexo FOREIGN KEY (TipoSexo) REFERENCES dbo.Valor(ValorID);
GO
ALTER TABLE dbo.Pessoa ADD CONSTRAINT CK_Pessoa_TipoSexo CHECK (TipoSexo IN (1, 2));
GO

CREATE TABLE dbo.Usuario
(
	UsuarioID INT IDENTITY,
	PessoaID INT NOT NULL,
	Senha VARCHAR(100) NOT NULL,
	DataCadastro DATETIME NOT NULL
);
GO
ALTER TABLE dbo.Usuario ADD CONSTRAINT PK_UsuarioID PRIMARY KEY(UsuarioID);
GO
ALTER TABLE dbo.Usuario ADD CONSTRAINT FK_Usuario_PessoaID FOREIGN KEY (PessoaID) REFERENCES dbo.Pessoa(PessoaID);
GO
ALTER TABLE dbo.Pessoa ADD CONSTRAINT FK_Pessoa_UsuarioCadastroID FOREIGN KEY (UsuarioCadastroID) REFERENCES dbo.Usuario(UsuarioID);
GO
ALTER TABLE dbo.Pessoa ADD CONSTRAINT FK_Pessoa_UsuarioAtualizacaoID FOREIGN KEY (UsuarioAtualizacaoID) REFERENCES dbo.Usuario(UsuarioID);
GO
ALTER TABLE dbo.Municipio ADD CONSTRAINT FK_Municipio_UsuarioCadastroID FOREIGN KEY (UsuarioCadastroID) REFERENCES dbo.Usuario(UsuarioID);
GO
ALTER TABLE dbo.Municipio ADD CONSTRAINT FK_Municipio_UsuarioAtualizacaoID FOREIGN KEY (UsuarioAtualizacaoID) REFERENCES dbo.Usuario(UsuarioID);
GO

CREATE TABLE dbo.Telefone
(
	TelefoneID INT IDENTITY,
	PessoaID INT NOT NULL,
	TipoTelefone INT NOT NULL,
	DDD VARCHAR(3) NOT NULL,
	Numero VARCHAR(10) NOT NULL,
	Operadora INT NOT NULL,
	Contato VARCHAR(100) NULL
)
GO

ALTER TABLE dbo.Telefone ADD CONSTRAINT PK_TelefoneID PRIMARY KEY(TelefoneID);
GO
ALTER TABLE dbo.Telefone ADD CONSTRAINT FK_Telefone_PessoaID FOREIGN KEY (PessoaID) REFERENCES dbo.Pessoa(PessoaID);
GO
ALTER TABLE dbo.Telefone ADD CONSTRAINT FK_Telefone_TipoTelefone FOREIGN KEY (TipoTelefone) REFERENCES dbo.Valor(ValorID);
GO
ALTER TABLE dbo.Telefone ADD CONSTRAINT CK_Telefone_TipoTelefone CHECK (TipoTelefone IN (3, 4, 5, 6, 7));
GO
ALTER TABLE dbo.Telefone ADD CONSTRAINT FK_Telefone_Operadora FOREIGN KEY (Operadora) REFERENCES dbo.Valor(ValorID);
GO
ALTER TABLE dbo.Telefone ADD CONSTRAINT CK_Telefone_Operadora CHECK (Operadora IN (8, 9, 10, 11));
GO

CREATE TABLE dbo.Endereco
(
	EnderecoID INT IDENTITY,
	PessoaID INT NOT NULL,
	Logradouro VARCHAR(200) NOT NULL,
	Numero VARCHAR(15) NULL,
	Cep VARCHAR(8) NOT NULL,
	Bairro VARCHAR(200) NOT NULL,
	MunicipioID INT NOT NULL,
	Complemento VARCHAR(200)
)
GO

ALTER TABLE dbo.Endereco ADD CONSTRAINT PK_EnderecoID PRIMARY KEY(EnderecoID);
GO
ALTER TABLE dbo.Endereco ADD CONSTRAINT FK_Endereco_PessoaID FOREIGN KEY (PessoaID) REFERENCES dbo.Pessoa(PessoaID);
GO
ALTER TABLE dbo.Endereco ADD CONSTRAINT FK_Endereco_MunicipioID FOREIGN KEY (MunicipioID) REFERENCES dbo.Municipio(MunicipioID);
GO

CREATE TABLE dbo.Aluno
(
	PessoaID INT NOT NULL,
	Matricula VARCHAR(50) NOT NULL,
	PaiPessoaID INT NULL,
	MaePessoaID INT NULL,
	DataCadastro DATETIME NOT NULL,
    UsuarioCadastroID INT NOT NULL,
    DataAtualizacao DATETIME NULL,
    UsuarioAtualizacaoID INT NULL
)
GO

ALTER TABLE dbo.Aluno ADD CONSTRAINT PK_AlunoID PRIMARY KEY(PessoaID);
GO
ALTER TABLE dbo.Aluno ADD CONSTRAINT FK_Aluno_PessoaID FOREIGN KEY (PessoaID) REFERENCES dbo.Pessoa(PessoaID);
GO
ALTER TABLE dbo.Aluno ADD CONSTRAINT FK_Aluno_UsuarioCadastroID FOREIGN KEY (UsuarioCadastroID) REFERENCES dbo.Usuario(UsuarioID);
GO
ALTER TABLE dbo.Aluno ADD CONSTRAINT FK_Aluno_UsuarioAtualizacaoID FOREIGN KEY (UsuarioAtualizacaoID) REFERENCES dbo.Usuario(UsuarioID);
GO
ALTER TABLE dbo.Aluno ADD CONSTRAINT FK_Aluno_PaiPessoaID FOREIGN KEY (PaiPessoaID) REFERENCES dbo.Pessoa(PessoaID);
GO
ALTER TABLE dbo.Aluno ADD CONSTRAINT FK_Aluno_MaePessoaID FOREIGN KEY (MaePessoaID) REFERENCES dbo.Pessoa(PessoaID);
GO

USE [master]
GO
CREATE LOGIN [dbCadastroAluno] WITH PASSWORD=N'123456', DEFAULT_DATABASE=[CadastroAluno], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER SERVER ROLE [bulkadmin] ADD MEMBER [dbCadastroAluno]
GO
ALTER SERVER ROLE [dbcreator] ADD MEMBER [dbCadastroAluno]
GO
ALTER SERVER ROLE [diskadmin] ADD MEMBER [dbCadastroAluno]
GO
ALTER SERVER ROLE [processadmin] ADD MEMBER [dbCadastroAluno]
GO
ALTER SERVER ROLE [securityadmin] ADD MEMBER [dbCadastroAluno]
GO
ALTER SERVER ROLE [serveradmin] ADD MEMBER [dbCadastroAluno]
GO
ALTER SERVER ROLE [setupadmin] ADD MEMBER [dbCadastroAluno]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [dbCadastroAluno]
GO
USE [CadastroAluno]
GO
CREATE USER [dbCadastroAluno] FOR LOGIN [dbCadastroAluno]
GO
