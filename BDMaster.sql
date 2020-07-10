DROP DATABASE IF EXISTS bd;
CREATE DATABASE bd
Default character set utf8;
USE bd;

#Gestão de Stoque 

CREATE TABLE usuario(
   Codigo int(22) NOT NULL AUTO_INCREMENT,
   Email varchar(50) NOT NULL,
   Nome varchar(50) DEFAULT NULL,
   Perfil varchar(50) DEFAULT NULL,
   Senha varchar(255) DEFAULT NULL,
   Situacao varchar(10) DEFAULT NULL,
   DescriFoto longtext,
   Foto longblob,
  PRIMARY KEY (Codigo)
)ENGINE=InnoDB;
INSERT INTO `usuario` VALUES ('0','inf@master.com','Master','Admim','123456','online','',NULL);
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

create table tiposProduto(
  id int not null auto_increment,
  designacao varchar(50) not null,
  primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO tiposProduto VALUES ("0","bens de consumo");
INSERT INTO tiposProduto VALUES ("0","produtos industriais");
INSERT INTO tiposProduto VALUES ("0","bens de conveniência");
INSERT INTO tiposProduto VALUES ("0","bens de impulso");
INSERT INTO tiposProduto VALUES ("0","bens de emergência");
INSERT INTO tiposProduto VALUES ("0","bens de compra comparada");
INSERT INTO tiposProduto VALUES ("0","bens de especialidade");
INSERT INTO tiposProduto VALUES ("0","bens não procurados");
INSERT INTO tiposProduto VALUES ("0","bens perecíveis");
INSERT INTO tiposProduto VALUES ("0","bens duráveis");
INSERT INTO tiposProduto VALUES ("0","bens não-duráveis");
INSERT INTO tiposProduto VALUES ("0","bens de capital");
INSERT INTO tiposProduto VALUES ("0","partes e materiais");
INSERT INTO tiposProduto VALUES ("0","abastecimento e serviços");
INSERT INTO tiposProduto VALUES ("0","commodities");
INSERT INTO tiposProduto VALUES ("0","produtos intermediários");


create table tipos(
  id int not null auto_increment,
  designacao varchar(50) not null,
  primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table tipoPagamento(
  id int not null auto_increment,
  designacao nvarchar(256) not null,
  primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table formaPagamento(
  id int not null auto_increment,
  designacao nvarchar(256) not null,
  primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE categoriaFun(
  id int not null auto_increment,
  designacao nvarchar(10) NOT NULL,
  codigo nvarchar(50) DEFAULT NULL,
  PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE departamento(
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
  descriFoto longtext,
  foto longblob,
  primary key(id),

  INDEX fk_cliente_tipo_idx (idTipo ASC),
  CONSTRAINT fk_cliente_tipo FOREIGN KEY (idTipo)REFERENCES tipos (id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE
  #INDEX fk_cliente_endereco_idx (idEndereco ASC),
  #CONSTRAINT fk_cliente_endereco FOREIGN KEY (idEndereco)REFERENCES endereco (id)
  #ON DELETE NO ACTION
  #ON UPDATE CASCADE  
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table funcionario(
  id int(11)not null auto_increment,
  codigo varchar(11) default null, 
  nome nvarchar(50) default null,
  idTipo int(11)default null,
  sexo enum('Masculino','Femenino'),
  descriFoto longtext,
  foto longblob,
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
  
  INDEX fk_funcionario_categoriaFun_idx (idCategoriaFun ASC),
  CONSTRAINT fk_funcionario_categoria FOREIGN KEY (idCategoriaFun)REFERENCES categoriaFun (id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE,
  INDEX fk_funcionario_departamento_idx (idDepartamento ASC),
  CONSTRAINT fk_funcionario_departamento FOREIGN KEY (idDepartamento)REFERENCES departamento (id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE

)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table vendedor(
  id int not null auto_increment,
  idFunc int not null,
  nome nvarchar(50) not null,
  utilizador nvarchar(50) not null,
  senha nvarchar(50) not null,
  situacao int default 0,
  desig enum('Activo','Desativado'),
  primary key(id),
  
  INDEX fk_vendedor_Funcionario_idx (idFunc ASC),
  CONSTRAINT fk_vendedor_Funcionario FOREIGN KEY (idFunc)REFERENCES funcionario (id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE
  
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table fornecedor (
  id int(11)not null auto_increment,
  codigo nvarchar(11)default null,
  nome nvarchar(50)not null,
  idTipo int(11)default null,
  nif nvarchar(11)default null,
  descriFoto longtext,
  foto longblob,
  descri nvarchar(200)default null,
  primary key(id),

INDEX fk_fornecedor_tipo_idx (idTipo ASC),
  CONSTRAINT fk_fornecedor_tipo FOREIGN KEY (idTipo)REFERENCES tipos (id)
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

create table endereco1(
  id int not null auto_increment,
  idFuncionario int not null,
  idContacto int DEFAULT null,
  morada varchar(50) DEFAULT null,
  localidade varchar(50) DEFAULT null,
  provincia varchar(50) default null,
  pais varchar(50) DEFAULT null,
  primary key(id),

  INDEX fk_endereco1_funcionarioidx (idFuncionario ASC),
  CONSTRAINT fk_endereco1_funcionario FOREIGN KEY (idFuncionario)REFERENCES funcionario(id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE

)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table endereco2(
  id int not null auto_increment,
  idFornecedor int not null,
  idContacto int DEFAULT null,
  morada varchar(50) DEFAULT null,
  localidade varchar(50) DEFAULT null,
  provincia varchar(50) default null,
  pais varchar(50) DEFAULT null,
  primary key(id),

  INDEX fk_endereco2_fornecedoridx (idFornecedor ASC),
  CONSTRAINT fk_indereco2_fornecedor FOREIGN KEY (idFornecedor)REFERENCES fornecedor(id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE

)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table endereco3(
  id int not null auto_increment,
  idCliente int not null,
  idContacto int DEFAULT null,
  morada varchar(50) DEFAULT null,
  localidade varchar(50) DEFAULT null,
  provincia varchar(50) default null,
  pais varchar(50) DEFAULT null,
  primary key(id),

  INDEX fk_endereco3_clienteidx (idCliente ASC),
  CONSTRAINT fk_endereco3_cliente FOREIGN KEY (idCliente)REFERENCES cliente(id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE

)ENGINE=InnoDB DEFAULT CHARSET=utf8;


create table contacto1(
  id int not null auto_increment,
  idFuncionario int not null,
  telemovel nvarchar(11) not null,
  telefone nvarchar(11) not null,
  email nvarchar(50) DEFAULT null,
  webpage nvarchar(50) DEFAULT null,
  PRIMARY KEY(id),

  INDEX fk_contacto1_funcionarioidx (idFuncionario ASC),
  CONSTRAINT fk_contacto1_funcionario FOREIGN KEY (idFuncionario)REFERENCES funcionario (id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE

)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table contacto2(
  id int not null auto_increment,
  idFornecedor int not null,
  telemovel nvarchar(11) not null,
  telefone nvarchar(11) not null,
  email nvarchar(50) DEFAULT null,
  webpage nvarchar(50) DEFAULT null,
  PRIMARY KEY(id),

  INDEX fk_contacto2_fornecedoridx (idFornecedor ASC),
  CONSTRAINT fk_contacto2_fornecedor FOREIGN KEY (idFornecedor)REFERENCES fornecedor(id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE

)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table contacto3(
  id int not null auto_increment,
  idCliente int not null,
  telemovel nvarchar(11) not null,
  telefone nvarchar(11) not null,
  email nvarchar(50) DEFAULT null,
  webpage nvarchar(50) DEFAULT null,
  PRIMARY KEY(id),

  INDEX fk_contacto3_clienteidx (idCliente ASC),
  CONSTRAINT fk_contacto3_cliente FOREIGN KEY (idCliente)REFERENCES cliente(id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE

)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table familiaProduto(
  id int not null auto_increment,
  idParente nvarchar(11) default null,
  designacao nvarchar(50) not null,
  imagem longblob,
  primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table categoria(
  id int not null auto_increment,
  codigo nvarchar(11) default null,
  designacao nvarchar(50)default null,
  primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table subcategoria (
  id int not null auto_increment,
  idCategoria INT null,
  designacao nvarchar(50)default null,
  primary key(id),

  INDEX fk_categoria_subcategoria_idx (idCategoria ASC),
  CONSTRAINT fk_categoria_subcategoria FOREIGN KEY (idCategoria)REFERENCES categoria (id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table marca (
  id int not null auto_increment,
  codigo nvarchar(11) default null,
  designacao nvarchar(50)default null,
  primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table modelo (
  id int not null auto_increment,
  idMarca INT NULL , 
  codigo nvarchar(11) Null,
  designacao nvarchar(50)default null,
  primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table unidade (
  id int not null auto_increment,
  codigo nvarchar(11) default null,
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
  idFamilia int null,
  idTaxa int null,
  designacao nvarchar(50) not null,
  descricao nvarchar(50)default null,
  imageProduto longblob,
  descriImage longtext,
  precoCompra decimal(10,2) default 0.00,
  precoCompra2 decimal(10,2) default 0.00,
  precoVenda decimal(10,2) default 0.00,
  precoVenda2 decimal(10,2) default 0.00,
  qtdade_stoke int default 1,
  idFabricante int null,
  qtdadeMinima int default 10,
  idUnidade int null,
  idCategoria int null,
  idModelo int null,
  idMarca int null,
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

)ENGINE=InnoDB DEFAULT CHARSET=utf8;


create table itensVendas(
  id int not null auto_increment,
  idProduto int(50)default null,
  produtoServico nvarchar(50) not null,
  armazem nvarchar(50)default 'Estoque',
  Variante nvarchar(50) default null,
  um nvarchar(50) default null,
  qtde double default 1,
  preco decimal(10,2) default 0.00,
  valorDesconto decimal(10,2) default 0.00,
  valorTotal decimal(10,2) default 0.00,
  prazoEntrega Datetime,
  margemLucro decimal(10,2) default 0.00,
  descricao nvarchar(50) default 0.00,
  
  primary key(id)

  #INDEX fk_itensv_Venda_idx (idVenda ASC),

  #CONSTRAINT fk_itensv_Venda FOREIGN KEY (idVenda)REFERENCES venda (id)
  #ON DELETE NO ACTION
  #ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table orcamentoGeral(
  id int not null auto_increment,
  idItem int not null,
  idVendedor int not null,
  documento nvarchar(50) not null,
  idCliente int not null,
  nomeCliente nvarchar(50) not null,
  clienteRelacionado nvarchar(50) default null,
  emissao datetime not null,
  vecimento datetime not null,
  facturamento datetime not null,
  aprovacaoCli nvarchar(50) not null,
  hora datetime not null,
  vendedor nvarchar(50) not null,
  prazoEntrega datetime default null,
  valorDesconto decimal(10,2) default 0.00,
  referencia nvarchar(50) default null,
  contactoCli nvarchar(50) default null,
  historico nvarchar(50) default null,
  primary key(id),
  
  INDEX fk_orcamentoGeral_itensVendas_idx (idItem ASC),
  CONSTRAINT fk_orcamentoGeral_itensVendas FOREIGN KEY (idItem)REFERENCES itensVendas (id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE,
  INDEX fk_orcamentoGeral_Cliente_idx (idCliente ASC),
  CONSTRAINT fk_orcamentoGeral_Cliente FOREIGN KEY (idCliente)REFERENCES cliente (id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE,
  INDEX fk_orcamentoGeral_vendedor_idx (idVendedor ASC),
  CONSTRAINT fk_orcamentoGeral_vendedor FOREIGN KEY (idVendedor)REFERENCES vendedor(id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE

)ENGINE=InnoDB auto_increment=16 default CHARSET=utf8;

create table parcelasVendas(
  id int not null auto_increment,
  idOrcamento int not null,
  formaPagamento nvarchar(50) not null,
  intervalo nvarchar(50) default '1ªParcela',
  tipoPagamento nvarchar(50) default null,
  JurosDiarios decimal(10,2) default 0.00,
  numeroParcela int(11) default null,
  dataVecimento datetime default null,
  intervaloNum int(11) default null,
  valorParcela decimal(10,2) default 0.00,
  qtdeValorParcela decimal(10,2) default 0.00,
  historico nvarchar(50) default null,
  titulosPagar decimal(10,2) default 0.00,
  primary key(id),

  INDEX fk_parcelav_orcamentoGeral_idx (idOrcamento ASC),
  CONSTRAINT fk_parcelav_idOrcamento FOREIGN KEY (idOrcamento)REFERENCES orcamentoGeral (id)
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
  dataNascimento DATETIME not null,
  dataEmissao DATETIME not null,
  dataValidade DATETIME not null,
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