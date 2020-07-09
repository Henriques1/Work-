#
#
DROP DATABASE IF EXISTS BD;
CREATE DATABASE BD
Default character set utf8
Default collate utf8_general_ci; 
USE BD;
#
#
CREATE TABLE usuario(
   Codigo varchar(22) NOT NULL DEFAULT '0',
   Nome varchar(50) DEFAULT NULL,
   Perfil varchar(50) DEFAULT NULL,
   Senha varchar(255) DEFAULT NULL,
   Situacao varchar(10) DEFAULT NULL,
   DescriFoto longtext,
   Foto longblob,
  PRIMARY KEY (Codigo)
)ENGINE=InnoDB;
INSERT INTO `usuario` VALUES ('0001','Master','Admim','123456','Activo','',NULL);
#
#
CREATE TABLE EMPRESAS(
    idEmp int NOT Null AUTO_INCREMENT,
    codigoEmp varchar(50) NOT Null,
    nomeEmp varchar(50)NOT Null,
    perfilEmp varchar(50)NOT Null,
    nif varchar(50)NOT Null,
    endereEmp varchar(50)Not Null,
    telefon varchar(50)Not Null,
    celular varchar(50) Default Null,
    emailEmp varchar(50) Default Null,
    descriLogo longtext,
    logoEmp longblob,
    PRIMARY KEY(idEmp)
)ENGINE=InnoDB;
#
#
CREATE TABLE CONTAS(
    idP INT default null, 
    classe varchar(50) NOT NULL,
    conta varchar(100) NOT NULL,
    descricao varchar(100) DEFAULT NULL,
    tipo varchar(50) Default NULL,
    categoria varchar(50) Default NULL,
    PRIMARY KEY(idP)
    
)ENGINE=InnoDB;
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('1','1','11','IMOBILIZAÇÕES CORPÓREAS ','I','Analítica');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('2','1','111','Terrenos e recursos naturais','I','Sintética');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('3','1','1111','Terrenos em bruto','M','Sintética');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('4','1','1112','Terrenos com arranjos','M','Sintética');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('5','1','1113','Subsolos','M','Sintética');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('6','1','1114','Terrenos com edifícios','I','Sintética');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('7','1','11141','Relativos a edifícios industriais','M','Sintética');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('8','1','11142','Relativos a edifícios administrativos e comerciais','M','Sintética');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('9','1','11123','Relativos a outros edifícios','M','Sintética');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('10','1','112','Edifícios e outras construções','I','Sintética');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('11','1','1121','Edifícios','I','Sintética');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('12','1','11211','Integrados em conjuntos industriais','M','Sintética');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('13','1','11212','Integrados em conjuntos administrativos e comerciais','M','Sintética');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('14','1','11213','Outros conjuntos industriais','M','Sintética');;
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('15','1','11214','Implantados em propriedades alheia','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('16','1','1122','Outras construções','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('17','1','1123','Instalações','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('18','1','113','Equipamentos básico','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('19','1','1131','Material industrial','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('20','1','1132','Ferramentas industriais','','');
#
#
CREATE TABLE DIARIOS(
    diarioID int NOT NULL AUTO_INCREMENT,
    diario varchar(50)NOT NULL,
    descri varchar(50)NOT Null,
    lancamento varchar(50)NOT NULL,
    descriLanc varchar(50) NOT Null,
    anoExercicio int DEFAULT NULL,
    numerador int(50) DEFAULT NULL,
    PRIMARY KEY(diarioID)    
)ENGINE=InnoDB;
#
#
CREATE TABLE TIPODOCS(
    tipodocID int Not null AUTO_INCREMENT,
    descriDoc varchar(50)Not null,
    diario varchar(50)Not null,
    balancFinn int default null,
    PRIMARY KEY(tipodocID)
)ENGINE=InnoDB; 
#
#
CREATE TABLE DOCUMENTOS(
    docID int NOT NULL AUTO_INCREMENT,
    idEmp varchar(50) NOT Null,
    tipodocID varchar(50) NOT NULL,
    doc varchar(50)NOT NULL,
    descriDoc varchar(50) NOT Null,
    diarioID int NOT Null,
    diario varchar(50) DEFAULT NULL,
    descriDiario varchar(50) NOT NULL,
    lancamento varchar(50)NOT NULL,
    anoExercicio date DEFAULT NULL,
    numerador int(50) DEFAULT NULL,
    PRIMARY KEY(docID)
)ENGINE=InnoDB;
#
#
CREATE TABLE MOVIMENTOS(
    movID int NOT NULL AUTO_INCREMENT,
    idEmp varchar(50) NOT Null,
    anoExercicio date Not Null,
    dataMovimentacao date DEFAULT NULL,
    diario varchar(50) DEFAULT NULL,
    descriDiario varchar(50) DEFAULT Null,
    #doc varchar(50) NOT NULL,
    #descriDoc varchar(50) NOT null,
    conta varchar(50)Not null,
    descricao varchar(100) DEFAULT NULL,
    movDebito decimal(12,2) DEFAULT NULL,
    movCredito decimal(12,2) DEFAULT NULL,
    saldoDebito decimal(12,2) DEFAULT NULL,
    saldoCredito decimal(12,2) DEFAULT NULL,
    diferenca decimal(12,2) Default null,
    PRIMARY KEY(movID)
)ENGINE=InnoDB;
#
#
#
#
#
#
#
#
#Gestão de Stoque 

create table tipos(
  id int not null auto_increment,
  designacao varchar(50) not null,
  primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table tipoPagamento(
  id int not null auto_increment,
  designacao nvarchar(256) not null,
  valor decimal(10,2),
  primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table contacto(
  id int not null auto_increment,
  telemovel nvarchar(11) not null,
  telefone nvarchar(11) not null,
  email nvarchar(50) DEFAULT null,
  webpage nvarchar(50) DEFAULT null,
  PRIMARY KEY(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table endereco(
  id int not null auto_increment,
  idContacto int DEFAULT null,
  morada varchar(50) DEFAULT null,
  localidade varchar(50) DEFAULT null,
  provincia varchar(50) default null,
  pais varchar(50) DEFAULT null,
  primary key(id),

  INDEX fk_endereco_contacto_idx (idContacto ASC),
  CONSTRAINT fk_endereco_contacto FOREIGN KEY (idContacto)REFERENCES contacto(id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE categoriaFun(
  id int not null auto_increment,
  designacao nvarchar(10) NOT NULL,
  codigo nvarchar(50) DEFAULT NULL,
  PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE departamento (
  id varchar(10) NOT NULL DEFAULT '',
  Nome varchar(50) DEFAULT NULL,
  PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table cliente(
  id int(11) not null auto_increment, 
  codigo varchar(11) default null, 
  nome varchar(50) not null, 
  idTipo int(50)default null,
  niff varchar(11)not null, 
  idEndereco int(50)default null,
  descriFoto longtext,
  foto longblob,
  primary key(id),

  INDEX fk_cliente_tipo_idx (idTipo ASC),
  CONSTRAINT fk_cliente_tipo FOREIGN KEY (idTipo)REFERENCES tipos (id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE,
  INDEX fk_cliente_endereco_idx (idEndereco ASC),
  CONSTRAINT fk_cliente_endereco FOREIGN KEY (idEndereco)REFERENCES endereco (id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE  
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table funcionario(
  id int(11)not null auto_increment,
  codigo varchar(11) default null, 
  nome nvarchar(50) default null,
  idTipo int(11)default null,
  sexo enum('Masculino','Femenino'),
  descriFoto longtext,
  foto longblob,
  idEndereco int(11)default null,
  idCategoriaFun int(11)default null,
  idSubCategoria int(11)default null,
  idDepartamento varchar(11)default null,
  tipoContrato int(11)default null,
  inicioContrato date,
  fimContrato date,
  primary key(id),

  INDEX fk_funcionario_tipo_idx (idTipo ASC),
  CONSTRAINT fk_funcionario_tipo FOREIGN KEY (idTipo)REFERENCES tipos (id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE,
  INDEX fk_funcionario_endereco_idx (idEndereco ASC),
  CONSTRAINT fk_funcionario_endereco FOREIGN KEY (idEndereco)REFERENCES endereco (id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE,
  INDEX fk_funcionario_categoriaFun_idx (idCategoriaFun ASC),
  CONSTRAINT fk_funcionario_categoria FOREIGN KEY (idCategoriaFun)REFERENCES categoriaFun (id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE,
  INDEX fk_funcionario_departamento_idx (idDepartamento ASC),
  CONSTRAINT fk_funcionario_departamento FOREIGN KEY (idDepartamento)REFERENCES departamento (id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE

)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table fornecedor (
  id int(11)not null auto_increment,
  codigo nvarchar(11)default null,
  nome nvarchar(50)not null,
  idTipo int(11)default null,
  nif nvarchar(11)default null,
  idEndereco int(11)default null,
  descriFoto longtext,
  foto longblob,
  descri nvarchar(200)default null,
  primary key(id),

  INDEX fk_fornecedor_tipo_idx (idTipo ASC),
  CONSTRAINT fk_fornecedor_tipo FOREIGN KEY (idTipo)REFERENCES tipos (id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE,
  INDEX fk_fornecedor_endereco_idx (idEndereco ASC),
  CONSTRAINT fk_fornecedor_endereco FOREIGN KEY (idEndereco)REFERENCES endereco (id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE

)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table fabricante(
  id int not null auto_increment,
  designacao nvarchar(11)default null,
  nacionalidade nvarchar(50)default 'Angolana',
  descri nvarchar(100)default null,
  primary key(id) 
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table familiaProduto(
  id int not null auto_increment,
  idParente nvarchar(11) default null,
  designacao nvarchar(50) not null,
  imagem longblob,
  primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table subCategoria (
  id nvarchar(11) not null,
  designacao nvarchar(50)default null,
  primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table categoria (
  id nvarchar(11) not null,
  idSubCategoria nvarchar(11) Default null,
  designacao nvarchar(50)default null,
  primary key(id),

  INDEX fk_categoria_subcategoria_idx (idSubCategoria ASC),
  CONSTRAINT fk_categoria_subcategoria FOREIGN KEY (idSubCategoria)REFERENCES subCategoria (id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table marca (
  id nvarchar(50)not null,
  designacao nvarchar(50)default null,
  primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table modelo (
  id nvarchar(50)not null,
  designacao nvarchar(50)default null,
  primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table unidade (
  id nvarchar(50)not null ,
  designacao nvarchar(50)default null,
  primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table taxa(
  id int not null auto_increment,
  designacao nvarchar(50) not null,
  percentagem DECIMAL(10,2),
  valor decimal(10,2),
  primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table produtos(
  id int not null auto_increment,
  codProduto nvarchar(30)default null,
  idFamilia int (11)DEFAULT null,
  idTaxa int(11)DEFAULT null,
  designacao nvarchar(50) not null,
  descricao nvarchar(50)default null,
  imageProduto longblob,
  descriImage longtext,
  precoCompra decimal(10,2) default 0.00,
  precoCompra2 decimal(10,2) default 0.00,
  precoVenda decimal(10,2) default 0.00,
  precoVenda2 decimal(10,2) default 0.00,
  qtdade_stoke int default 1,
  idFabricante int(11)default null,
  qtdadeMinima int default 10,
  idUnidade nvarchar(50) default null,
  idCategoria varchar (11)default null,
  idModelo nvarchar(50) default null,
  idMarca nvarchar(11)default null,
  producao date,
  validade date,
  codBarras nvarchar(50) default null,
  primary key(id),

  INDEX fk_produtos_familia_idx (idFamilia ASC),
  INDEX fk_produtos_taxa_idx (idTaxa ASC),
  INDEX fk_produtos_fabricante_idx (idFabricante ASC),
  INDEX fk_produtos_unidade_idx (idUnidade ASC),
  INDEX fk_produtos_categoria_idx (idCategoria ASC),
  INDEX fk_produtos_modelo_idx (idModelo ASC),
  INDEX fk_produtos_marca_idx (idMarca ASC),

  CONSTRAINT fk_produtos_famila FOREIGN KEY (idFamilia)REFERENCES familiaProduto (id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE,
  CONSTRAINT fk_produtos_taxa FOREIGN KEY (idTaxa)REFERENCES taxa (id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE,
  CONSTRAINT fk_produtos_fabricante FOREIGN KEY (idFabricante)REFERENCES fabricante (id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE,
  CONSTRAINT fk_produtos_unidade FOREIGN KEY (idUnidade)REFERENCES unidade (id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE, 
  CONSTRAINT fk_produtos_categoria FOREIGN KEY (idCategoria)REFERENCES categoria (id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE, 
  CONSTRAINT fk_produtos_modelo FOREIGN KEY (idModelo)REFERENCES modelo (id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE, 
  CONSTRAINT fk_produtos_marca FOREIGN KEY (idMarca)REFERENCES marca (id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE 

)ENGINE=InnoDB auto_increment=16 default CHARSET=utf8;

create table venda(
  id int not null auto_increment,
  codVenda nvarchar(11)default null,	
  dataVenda date,
  notaFiscal nvarchar(11)default null,
  idProduto int(11) not null,
  idCliente int(11) not null,
  idFuncionario int(11) not null,
  idTipoPagamento int(11) not null,
  dataPagamento date,
  situacao nvarchar(100) not null,
  valor decimal(10,2) not null,
  desconto decimal(10,2) null default 0.00,
  vendaParcelas decimal(10,2) null default 0.00,
  total decimal(10,2) null default 0.00,
  primary key(id),

  INDEX fk_venda_produtos_idx (idProduto ASC),
  INDEX fk_venda_idCliente_idx (idCliente ASC),
  INDEX fk_venda_idFuncionario_idx (idFuncionario ASC),
  INDEX fk_venda_idTipoPagamento_idx (idTipoPagamento ASC),

  CONSTRAINT fk_venda_produtos FOREIGN KEY (idProduto)REFERENCES produtos (id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE,
  CONSTRAINT fk_venda_idCliente FOREIGN KEY (idCliente)REFERENCES cliente (id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE,
  CONSTRAINT fk_venda_idFuncionario FOREIGN KEY (idFuncionario)REFERENCES funcionario (id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE,
  CONSTRAINT fk_venda_idTipoPagamento FOREIGN KEY (idTipoPagamento)REFERENCES tipoPagamento (id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table itensVendas(
  id int not null auto_increment,
  idVenda int(11) not null,
  idProduto int(50)default null,
  qtde double default 1,
  valor decimal(10,2) default 0.00,
  primary key(id),

  INDEX fk_itensv_Venda_idx (idVenda ASC),

  CONSTRAINT fk_itensv_Venda FOREIGN KEY (idVenda)REFERENCES venda (id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table parcelasVendas(
  id int not null auto_increment,
  idVenda int(50) not null,
  codVenda nvarchar(50) not null,
  valor decimal(10,2) not null,
  dataPagamento date not null,
  primary key(id),

  INDEX fk_parcelav_Venda_idx (idVenda ASC),
  CONSTRAINT fk_parcelav_Venda FOREIGN KEY (idVenda)REFERENCES venda (id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE
)ENGINE=InnoDB auto_increment=16 default CHARSET=utf8;

create table movimento(
  id int not null auto_increment,
  fonte varchar(50) Default null,
  idProduto int not null,
  idCliente int not null,
  idFornecedor int not null,
  quantidade int not null,
  valor decimal not null,
  designacao enum('Entrada','Saida'),
  dataMovimento DATETIME,
  idTipoPagamento int not null, 
  observacao nvarchar(100) DEFAULT NULL,
  primary key(id),

  INDEX fk_movimento_produtos_idx (idProduto ASC),
  INDEX fk_movimento_idCliente_idx (idCliente ASC),
  INDEX fk_movimento_idFornecedor_idx (idFornecedor ASC),
  INDEX fk_movimento_idTipoPagamento_idx (idTipoPagamento ASC),

  CONSTRAINT fk_movimento_produtos FOREIGN KEY (idProduto)REFERENCES produtos (id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE,
  CONSTRAINT fk_movimento_idCliente FOREIGN KEY (idCliente)REFERENCES cliente (id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE,
  CONSTRAINT fk_movimento_idFornecedor FOREIGN KEY (idFornecedor)REFERENCES funcionario (id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE,
  CONSTRAINT fk_movimento_idTipoPagamento FOREIGN KEY (idTipoPagamento)REFERENCES tipoPagamento (id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE
)ENGINE=InnoDB auto_increment=16 default CHARSET=utf8;

create table BI(
  id int not null auto_increment,
  idFunc int not null,
  numero varchar(50) not null,
  filiacao varchar(50) DEFAULT null,
  nascimento DATETIME not null,
  emissao DATETIME not null,
  validade DATETIME not null,
  primary key(id),

  INDEX fk_BI_idFuncionario_idx (idFunc ASC),
  CONSTRAINT fk_BI_idFuncionario FOREIGN KEY (idFunc)REFERENCES funcionario (id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE
)ENGINE=InnoDB auto_increment=16 default CHARSET=utf8;

create table controlFuncionario(
  id int not null auto_increment,
  idFunc int not null,
  designacao varchar(50) default null,
  presenca int not null,
  descricao varchar(50) default null,
  datacontrol datetime not null,
  PRIMARY KEY(id),

  INDEX fk_control_Funcionario_idx (idFunc ASC),
  CONSTRAINT fk_control_Funcionario FOREIGN KEY (idFunc)REFERENCES funcionario (id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE
)ENGINE=InnoDB auto_increment=16 default CHARSET=utf8;