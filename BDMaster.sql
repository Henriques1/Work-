#SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT;
#SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS;
#SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION;
#SET NAMES utf8;
#SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
#SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
#SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';
#SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0; 

DROP DATABASE IF EXISTS bd;
CREATE DATABASE bd
Default character set utf8;
USE bd;


###=============================================================================================================
####Gestão de Stoque 
###=============================================================================================================

###=============================================================================================================
####Add Register  
###=============================================================================================================


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
CREATE TABLE empresas(
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
  codigo nvarchar(50) null,
  designacao nvarchar(50) not null,
  primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO tiposProduto VALUES ("0","T01","bens de consumo");
INSERT INTO tiposProduto VALUES ("0","T02","produtos industriais");
INSERT INTO tiposProduto VALUES ("0","T03","bens de conveniência");
INSERT INTO tiposProduto VALUES ("0","T04","Mercadoria");
INSERT INTO tiposProduto VALUES ("0","T05","bens de impulso");
INSERT INTO tiposProduto VALUES ("0","T06","bens de emergência");
INSERT INTO tiposProduto VALUES ("0","T07","bens de compra comparada");
INSERT INTO tiposProduto VALUES ("0","T08","bens de especialidade");
INSERT INTO tiposProduto VALUES ("0","T09","bens não procurados");
INSERT INTO tiposProduto VALUES ("0","T010","bens perecíveis");
INSERT INTO tiposProduto VALUES ("0","T011","bens duráveis");
INSERT INTO tiposProduto VALUES ("0","T012","bens não-duráveis");
INSERT INTO tiposProduto VALUES ("0","T013","bens de capital");
INSERT INTO tiposProduto VALUES ("0","T014","partes e materiais");
INSERT INTO tiposProduto VALUES ("0","T015","abastecimento e serviços");
INSERT INTO tiposProduto VALUES ("0","T016","commodities");
INSERT INTO tiposProduto VALUES ("0","T017","produtos intermediários");


create table tipoEntidade(
  id int not null auto_increment,
  designacao varchar(50) not null,
  primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO tipoEntidade VALUES ("0","Entidade Física");
INSERT INTO tipoEntidade VALUES ("0","Entidade Júridica");
INSERT INTO tipoEntidade VALUES ("0","Entidades Anónimas");

create table tipoFuncionarios(
  id int not null auto_increment,
  designacao varchar(50) not null,
  primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO tipoFuncionarios VALUES ("0","Efectivo");
INSERT INTO tipoFuncionarios VALUES ("0","Colaborador");
INSERT INTO tipoFuncionarios VALUES ("0","Dependente");
INSERT INTO tipoFuncionarios VALUES ("0","Independente");


create table nacionalidadeFunc(
  id int not null auto_increment,
  designacao varchar(50) not null,
  primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO nacionalidadeFunc VALUES ("0","Angolana");
INSERT INTO nacionalidadeFunc VALUES ("0","Estrangeiro");

create table nacionalidadeFabricante(
  id int not null auto_increment,
  designacao varchar(50) not null,
  primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO nacionalidadeFabricante VALUES ("0","Nacional");
INSERT INTO nacionalidadeFabricante VALUES ("0","Local");
INSERT INTO nacionalidadeFabricante VALUES ("0","Estrangeiro");

create table tipoPagamento(
  id int not null auto_increment,
  codigo nvarchar(50) null,
  designacao nvarchar(256) not null,
  primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO tipoPagamento VALUES ("0","AV","À Vista");
INSERT INTO tipoPagamento VALUES ("0","AP","À Prazo");
INSERT INTO tipoPagamento VALUES ("0","CH","Cheque");
INSERT INTO tipoPagamento VALUES ("0","CC","Cartões de créditos");


create table formaPagamento(
  id int not null auto_increment,
  codigo nvarchar(50) null,
  designacao nvarchar(256) not null,
  primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO formaPagamento VALUES ("0","CC","Cartão Crédito");
INSERT INTO formaPagamento VALUES ("0","CD","Cartão Débito");
INSERT INTO formaPagamento VALUES ("0","CH","Cheque Bancário");
INSERT INTO formaPagamento VALUES ("0","CI","Crédito Documentário Internacional");
INSERT INTO formaPagamento VALUES ("0","CO","Cheque ou Cartão Oferta");
INSERT INTO formaPagamento VALUES ("0","CS","Compensação de Saldos em conta Corrente");
INSERT INTO formaPagamento VALUES ("0","DE","Dinheiro Electrónico");
INSERT INTO formaPagamento VALUES ("0","MB","Referências de Pagamento para Multicaixa");
INSERT INTO formaPagamento VALUES ("0","NU","Numerário");
INSERT INTO formaPagamento VALUES ("0","OU","Outros Meios Aqui não Assinalados");
INSERT INTO formaPagamento VALUES ("0","PR","Permuta de  Bens");
INSERT INTO formaPagamento VALUES ("0","TB","Transferência Bancária ou Débito Directo Autorizado");

CREATE TABLE categoriaFun(
  id int not null auto_increment,
  designacao nvarchar(100) NOT NULL,
  PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO categoriaFun VALUES ("0","P.C.A");
INSERT INTO categoriaFun VALUES ("0","Sec. Executiva");
INSERT INTO categoriaFun VALUES ("0","Auxiliar Adm.");
INSERT INTO categoriaFun VALUES ("0","Estágio Adm.");
INSERT INTO categoriaFun VALUES ("0","Motorista Sénior");
INSERT INTO categoriaFun VALUES ("0","Motorista");
INSERT INTO categoriaFun VALUES ("0","Balconista");

CREATE TABLE departamento(
  id int not null auto_increment,
  designacao nvarchar(100) DEFAULT NULL,
  PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO departamento VALUES ("0","Administrativo");
INSERT INTO departamento VALUES ("0","Financeiro");
INSERT INTO departamento VALUES ("0","Recursos Humanos (RH)");
INSERT INTO departamento VALUES ("0"," Comercial");

create table cliente(
  id int(11) not null auto_increment, 
  codigo varchar(11) not null, 
  nome nvarchar(50) not null, 
  idTipo int(50) null,
  nif nvarchar(16)not null, 
  morada nvarchar(100) null,
  endereco nvarchar(100) null,
  localidade nvarchar(100) null,
  provincia nvarchar(100) null,
  pais nvarchar(100) null,
  telemovel nvarchar(100) null,
  telefone nvarchar(15) null,
  email nvarchar(50) null,
  webpag nvarchar(50) null,
  descriFoto longtext,
  foto longblob,
  primary key(id),

  INDEX fk_cliente_tipoEntidade_idx (idTipo ASC),
  CONSTRAINT fk_cliente_tipoEntidade FOREIGN KEY (idTipo)REFERENCES tipoEntidade (id)
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
  estadoSivil nvarchar(50) null,
  
  nascimento date null,
  emissao date null,
  BI nvarchar(50) null,
  validade date null,
  idNacionalidade int(11) null,
  pai nvarchar(50) null,
  mae nvarchar(50) null,
  
  morada nvarchar(100) null,
  localidade nvarchar(100) null,
  provincia nvarchar (100) null,
  pais nvarchar(100) null,
  telemovel nvarchar(100) null,
  telefone nvarchar(100) null,
  email nvarchar(100) null,
  webpag nvarchar(100) null,
  descriFoto longtext null,
  foto longblob null,
  idCategoriaFun int(11) null,
  idDepartamento  int(11) null,

  primary key(id),

  INDEX fk_funcionario_Nacionalidade_idx (idNacionalidade ASC),
  CONSTRAINT fk_funcionario_Nacionalidade FOREIGN KEY (idNacionalidade)REFERENCES nacionalidadeFunc (id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE,

  INDEX fk_tipoFuncionarios_idx (idTipo ASC),
  CONSTRAINT fk_tipoFuncionarios FOREIGN KEY (idTipo)REFERENCES tipoFuncionarios (id)
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

create table fornecedor(
  id int(11)not null auto_increment,
  codigo nvarchar(11) not null,
  nome nvarchar(50)not null,
  morada nvarchar(90) null,
  nif nvarchar(50) null,
  telemovel nvarchar(15) null,
  telefone nvarchar(15) null,
  email nvarchar(50) null,
  descriFoto longtext,
  foto longblob,
  descri nvarchar(200) null,
  primary key(id)

)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table fabricante(
  id int not null auto_increment,
  codigo nvarchar(11) null,
  designacao nvarchar(50)default null,
  idNacionalidade int(50)default 0,
  descri nvarchar(100)default null,
  primary key(id),

INDEX fk_fabricante_nacionalidade_idx (idNacionalidade ASC),
  CONSTRAINT k_fabricante_nacionalidade FOREIGN KEY (idNacionalidade)REFERENCES nacionalidadeFabricante (id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE

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
  telemovel nvarchar(15) not null,
  telefone nvarchar(15) not null,
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
  telemovel nvarchar(15) not null,
  telefone nvarchar(15) not null,
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
  telemovel nvarchar(15) not null,
  telefone nvarchar(15) not null,
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
  idParente nvarchar(50) default null,
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
  codigo nvarchar(11) default null,
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
  primary key(id),

  INDEX fk_marca_modelo_idx (idMarca ASC),
  CONSTRAINT fk_marca_modelo FOREIGN KEY (idMarca)REFERENCES marca (id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table estatuDocumento(
  id int not null auto_increment,
  codigo nvarchar(11) not null,
  designacao nvarchar(300)not null,
  primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO estatuDocumento VALUES ("0","N","Normal");
INSERT INTO estatuDocumento VALUES ("0","T","Por conta de terceiros");
INSERT INTO estatuDocumento VALUES ("0","A","Documento anulado");
INSERT INTO estatuDocumento VALUES ("0","F","Documento facturado");
INSERT INTO estatuDocumento VALUES ("0","PEN","Pendente");
INSERT INTO estatuDocumento VALUES ("0","REC","Recebido");
INSERT INTO estatuDocumento VALUES ("0","PAG","Pago");
INSERT INTO estatuDocumento VALUES ("0","R","Documento de resumo doutros documentos...");


create table tipoDocumentoC(
  id int not null auto_increment,
  codigo nvarchar(11) not null,
  designacao nvarchar(50)not null,
  primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO tipoDocumentoC VALUES ("0","FT","Factura");
INSERT INTO tipoDocumentoC VALUES ("0","FR","Factura/Recibo");
INSERT INTO tipoDocumentoC VALUES ("0","VD","Venda a Dinheiro");
INSERT INTO tipoDocumentoC VALUES ("0","GF","Factura Genérica");
INSERT INTO tipoDocumentoC VALUES ("0","FG","Factura Global");
INSERT INTO tipoDocumentoC VALUES ("0","AC","Aviso de Cobrança");
INSERT INTO tipoDocumentoC VALUES ("0","AR","Aviso de Cobrança/Recibo");
INSERT INTO tipoDocumentoC VALUES ("0","RE","Recibo");
INSERT INTO tipoDocumentoC VALUES ("0","ND","Nota de Débito");
INSERT INTO tipoDocumentoC VALUES ("0","NC","Nota de Crédito");
INSERT INTO tipoDocumentoC VALUES ("0","GR","Guia de Remessa");
INSERT INTO tipoDocumentoC VALUES ("0","AF","Factura/Recibo (Autofacturação)");
INSERT INTO tipoDocumentoC VALUES ("0","TV","Talão de Venda");
INSERT INTO tipoDocumentoC VALUES ("0","TS","Talão de serviços prestados");
INSERT INTO tipoDocumentoC VALUES ("0","TD","Talão de devolução");
INSERT INTO tipoDocumentoC VALUES ("0","AA","Alienação de activos");
INSERT INTO tipoDocumentoC VALUES ("0","DA","Devolução de activos");
INSERT INTO tipoDocumentoC VALUES ("0","RP","Recibo de prémio");
INSERT INTO tipoDocumentoC VALUES ("0","R","Recibo de estomo");



create table tipoDocumentoF(
  id int not null auto_increment,
  codigo nvarchar(11) not null,
  designacao nvarchar(50)not null,
  primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO tipoDocumentoF VALUES ("0","FT","Factura");
INSERT INTO tipoDocumentoF VALUES ("0","FR","Factura/Recibo");
INSERT INTO tipoDocumentoF VALUES ("0","VD","Venda a Dinheiro");
INSERT INTO tipoDocumentoF VALUES ("0","GF","Factura Genérica");
INSERT INTO tipoDocumentoF VALUES ("0","FG","Factura Global");
INSERT INTO tipoDocumentoF VALUES ("0","AC","Aviso de Cobrança");
INSERT INTO tipoDocumentoF VALUES ("0","AR","Aviso de Cobrança/Recibo");
INSERT INTO tipoDocumentoF VALUES ("0","RE","Recibo");
INSERT INTO tipoDocumentoF VALUES ("0","ND","Nota de Débito");
INSERT INTO tipoDocumentoF VALUES ("0","NC","Nota de Crédito");
INSERT INTO tipoDocumentoF VALUES ("0","GR","Guia de Remessa");
INSERT INTO tipoDocumentoF VALUES ("0","AF","Factura/Recibo (Autofacturação)");
INSERT INTO tipoDocumentoF VALUES ("0","TV","Talão de Venda");
INSERT INTO tipoDocumentoF VALUES ("0","TS","Talão de Serviços Prestados");

create table unidade (
  id int not null auto_increment,
  codigo nvarchar(11) not null,
  designacao nvarchar(50)not null,
  primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO unidade VALUES ("0","UN","Unidade");
INSERT INTO unidade VALUES ("0","Kg","Quilos");
INSERT INTO unidade VALUES ("0","g","Grama");
INSERT INTO unidade VALUES ("0","SC60","Saco 60Kg");
INSERT INTO unidade VALUES ("0","Hr","Hora");
INSERT INTO unidade VALUES ("0","CX","Caixa");
INSERT INTO unidade VALUES ("0","DZ","Dúzia");
INSERT INTO unidade VALUES ("0","PT","Pacote");
INSERT INTO unidade VALUES ("0","PÇ","Peça");
INSERT INTO unidade VALUES ("0","PR","Par");
INSERT INTO unidade VALUES ("0","RL","Rolo");
INSERT INTO unidade VALUES ("0","L","Litro");
INSERT INTO unidade VALUES ("0","m3","Metro cúbico");
INSERT INTO unidade VALUES ("0","ml","Mililitro");
INSERT INTO unidade VALUES ("0","RL","Rolo");
INSERT INTO unidade VALUES ("0","m","Metro");
INSERT INTO unidade VALUES ("0","m2","Metro quadrado");
INSERT INTO unidade VALUES ("0","cm","Centímetro");
INSERT INTO unidade VALUES ("0","cm2","Centímetro quadrado");
INSERT INTO unidade VALUES ("0","cm","Centímetro");

create table referencia(
  id int not null auto_increment,
  codigo nvarchar(11) null,
  designacao nvarchar(50) not null,
  primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO referencia VALUES ("0","LC","Local");
INSERT INTO referencia VALUES ("0","LB","Lobinave");
INSERT INTO referencia VALUES ("0","SL","Sul");
INSERT INTO referencia VALUES ("0","PT","Ponte");
INSERT INTO referencia VALUES ("0","CA","Canata");
INSERT INTO referencia VALUES ("0","SN","Sonangol");
INSERT INTO referencia VALUES ("0","CB1","Cabaia1");
INSERT INTO referencia VALUES ("0","CB2","Cabaia2");
INSERT INTO referencia VALUES ("0","CJ","Cajendede");
INSERT INTO referencia VALUES ("0","CS","Cassai");

###=============================================================================================================
### Product Tax
###=============================================================================================================

create table taxa(
  id int not null auto_increment,
  tipoImposto nvarchar(50) not null,
  codigoImposto nvarchar(50) not null,
  designacao nvarchar(50) not null,
  percentagem DECIMAL(10,2),
  valor decimal(10,2),
  primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

###=============================================================================================================
### Start Add Product Purchase Business
###=============================================================================================================


create table produtos(
  id int(11)not null auto_increment,
  codProduto nvarchar(11) not null,
  designacao nvarchar(50) not null,
  idTipoProduto int null,
  tipoProduto nvarchar(50) null,

  idTaxa int null,
  tipoImposto nvarchar(50) null,
  codigoImposto nvarchar(50) null,
  designacaoImp nvarchar(50) null,
  percentagemImp decimal(10,2) default 0.00,
  valorImp decimal(10,2) default 0.00,
  ivaDedutivel decimal(10,2) default 0.00,

  precoVenda1 decimal(10,2) default 0.00,
  precoVenda2 decimal(10,2) default 0.00,
  precoVenda3 decimal(10,2) default 0.00,
  precoVenda4 decimal(10,2) default 0.00,

  idCategoria int null,
  categoria nvarchar(50) null,
  idSubCategoria int null,
  subCategoria nvarchar(50) null,

  idModelo int null,
  modelo nvarchar(50) null,
  idMarca int null,
  marca nvarchar(50) null, 

  descricao nvarchar(50)default null,
  imageProduto longblob,
  descriImage longtext,

  producao date,
  validade date,
  codBarras nvarchar(50) null,
  primary key(id)

  #INDEX fk_produtos_taxa_idx (idTaxa ASC),
  #INDEX fk_produtos_categoria_idx (idCategoria ASC),
  #INDEX fk_produtos_SubCategoria_idx (idSubCategoria ASC),
  #INDEX fk_produtos_modelo_idx (idModelo ASC),
  #INDEX fk_produtos_marca_idx (idMarca ASC),

  
  #CONSTRAINT fk_produtos_taxa FOREIGN KEY (idTaxa)REFERENCES taxa (id)
  #ON DELETE NO ACTION
  #ON UPDATE CASCADE,
  #CONSTRAINT fk_produtos_categoria FOREIGN KEY (idCategoria)REFERENCES categoria (id)
  #ON DELETE NO ACTION
  #ON UPDATE CASCADE, 
  #CONSTRAINT fk_produtos_SubCategoria FOREIGN KEY (idSubCategoria )REFERENCES subcategoria (id)
  #ON DELETE NO ACTION
  #ON UPDATE CASCADE,
  #CONSTRAINT fk_produtos_modelo FOREIGN KEY (idModelo)REFERENCES modelo (id)
  #ON DELETE NO ACTION
  #ON UPDATE CASCADE, 
  #CONSTRAINT fk_produtos_marca FOREIGN KEY (idMarca)REFERENCES marca (id)
  #ON DELETE NO ACTION
  #ON UPDATE CASCADE 

)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table estoque(
  id int not null auto_increment,
  idFornecedor int not null,
  fornecedor nvarchar(50) not null,
  idProduto int not null,
  Item nvarchar(50)not null,
  designacao nvarchar(50) not null,
  designacaoEstoque nvarchar(50) null,
  variante nvarchar(50) null,

  precoVenda1 decimal(10,2) default 0.00,
  precoVenda2 decimal(10,2) default 0.00,
  precoVenda3 decimal(10,2) default 0.00,
  precoVenda4 decimal(10,2) default 0.00,

  quantidade double default 1,
  quantidadeMin double default 10,
  unidadeM nvarchar(50) null,

  codBarras nvarchar(50) null,

  imposto nvarchar(50) null,
  percentagemImposto decimal(10,2) default 0.00,
  valorImposto decimal(10,2) default 0.00,

  procedencia nvarchar(50) null,
  dataCompra date,
  primary key(id),

  #INDEX fk_estoque_fornecedor_idx (idFornecedor ASC),

  #CONSTRAINT fk_estoque_fornecedor FOREIGN KEY (idFornecedor)REFERENCES fornecedor (id)
  #ON DELETE NO ACTION
  #ON UPDATE CASCADE,
  INDEX fk_estoque_produtos_idx (idProduto ASC),
  CONSTRAINT fk_estoque_produtos FOREIGN KEY (idProduto)REFERENCES produtos(id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE

)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table orcamentoCompra(
  id int not null auto_increment,
  facturamento nvarchar(50) not null,

  idVendedor int not null,
  vendedor nvarchar(50) not null,

  documento nvarchar(50) not null,
  tipoDocumento nvarchar(50) not null,

  idFornecedor int not null,
  fornecedor nvarchar(50) not null,
  emissao datetime not null,
  vecimento datetime not null,
  previsaoFactura datetime not null,
  condPag nvarchar(11) null,
  prazoEntrega nvarchar(50) default null,
  periodo int null,


  valorCompra decimal(10,2) default 0.00,
  valorImposto decimal(10,2) default 0.00,
  valorTributavel decimal(10,2) default 0.00,
  totalDocumento decimal(10,2) default 0.00,
  valorTotal decimal(10,2) default 0.00,
  valorPagar decimal(10,2) default 0.00,
  
  moeda nvarchar(11) null,
  estado nvarchar(11) null,
  modo nvarchar(11) null,
  historico nvarchar(50) default null,
  primary key(id)
  
  #INDEX fk_orcamentoCompra_Fornecedor_idx (idFornecedor ASC),
  #CONSTRAINT fk_orcamentoCompra_Fornecedor FOREIGN KEY (idFornecedor)REFERENCES fornecedor (id)
  #ON DELETE NO ACTION
  #ON UPDATE CASCADE,
  #INDEX fk_orcamentoCompra_vendedor_idx (idVendedor ASC),
  #CONSTRAINT fk_orcamentoCompra_vendedor FOREIGN KEY (idVendedor)REFERENCES vendedor(id)
  #ON DELETE NO ACTION
  #ON UPDATE CASCADE

)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table itemCompra(

  id int not null auto_increment,
  facturamento nvarchar(50) not null,
  idProduto int not null,
  Item nvarchar(50)not null,
  designacao nvarchar(200) not null,
  armazem nvarchar(50)default 'Estoque',
  variante nvarchar(50) null,

  quantidade double default 1,
  unidadeM nvarchar(50) null,

  precoUnitario decimal(10,2) default 0.00,
  valorItem decimal(10,2) default 0.00,

  valorDesconto decimal(10,2) default 0.00,

  imposto decimal(10,2) default 0.00,
  
  primary key(id)

  #INDEX fk_itensv_Venda_idx (idVenda ASC),

  #CONSTRAINT fk_itensv_Venda FOREIGN KEY (idVenda)REFERENCES venda (id)
  #ON DELETE NO ACTION
  #ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table parcelasCompra(
  id int not null auto_increment,
  idOrcamentoCompra int not null,
  codigoDocumento nvarchar (50) not null,
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

  INDEX fk_parcelaComp_orcamentoCompra_idx (idOrcamentoCompra ASC),
  CONSTRAINT fk_parcelaComp_idOrcamentoCompra FOREIGN KEY (idOrcamentoCompra)REFERENCES orcamentoCompra (id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

###=============================================================================================================
### Start Product sales business
###=============================================================================================================

create table orcamentoVenda(
  id int not null auto_increment,
  facturamento nvarchar(50) not null,

  idVendedor int not null,
  vendedor nvarchar(50) not null,

  documento nvarchar(50) not null,
  tipoDocumento nvarchar(50) not null,

  idCliente int not null,
  cliente nvarchar(50) not null,
  emissao datetime not null,
  vecimento datetime not null,
  previsaoFactura datetime not null,
  condPag nvarchar(11) null,
  prazoEntrega nvarchar(50) default null,
  periodo int null,


  valorVenda decimal(10,2) default 0.00,
  valorImposto decimal(10,2) default 0.00,
  valorTributavel decimal(10,2) default 0.00,
  totalDocumento decimal(10,2) default 0.00,
  valorTotal decimal(10,2) default 0.00,
  valorReceber decimal(10,2) default 0.00,
  
  moeda nvarchar(11) null,
  estado nvarchar(11) null,
  modo nvarchar(11) null,
  historico nvarchar(50) default null,
  primary key(id)
  
  #INDEX fk_orcamentoGeral_itensVendas_idx (idItem ASC),
  #CONSTRAINT fk_orcamentoGeral_itensVendas FOREIGN KEY (idItem)REFERENCES itensVendas (id)
  #ON DELETE NO ACTION
  #ON UPDATE CASCADE,
  #INDEX fk_orcamentoGeral_Cliente_idx (idCliente ASC),
  #CONSTRAINT fk_orcamentoGeral_Cliente FOREIGN KEY (idCliente)REFERENCES cliente (id)
  #ON DELETE NO ACTION
  #ON UPDATE CASCADE,
  #INDEX fk_orcamentoGeral_vendedor_idx (idVendedor ASC),
  #CONSTRAINT fk_orcamentoGeral_vendedor FOREIGN KEY (idVendedor)REFERENCES vendedor(id)
  #ON DELETE NO ACTION
  #ON UPDATE CASCADE

)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table itensVendas(
  id int not null auto_increment,
  facturamento nvarchar(50) not null,
  idProduto int not null,
  Item nvarchar(50)not null,
  designacao nvarchar(200) not null,
  armazem nvarchar(50)default 'Estoque',
  variante nvarchar(50) null,

  quantidade double default 1,
  unidadeM nvarchar(50) null,

  precoUnitario decimal(10,2) default 0.00,
  valorItem decimal(10,2) default 0.00,

  valorDesconto decimal(10,2) default 0.00,

  imposto decimal(10,2) default 0.00,
  
  primary key(id)

  #INDEX fk_itensv_Venda_idx (idVenda ASC),

  #CONSTRAINT fk_itensv_Venda FOREIGN KEY (idVenda)REFERENCES venda (id)
  #ON DELETE NO ACTION
  #ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table parcelasVendas(
  id int not null auto_increment,
  idOrcamentoVenda int not null,
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
  titulosReceber decimal(10,2) default 0.00,
  primary key(id),

  INDEX fk_parcelaVenda_orcamentoVenda_idx (idOrcamentoVenda ASC),
  CONSTRAINT fk_parcelaVenda_idOrcamentoVenda FOREIGN KEY (idOrcamentoVenda)REFERENCES orcamentoVenda (id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


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
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
)ENGINE=InnoDB auto_increment=1 default CHARSET=utf8;

create table assiduidade(
  id int not null auto_increment,
  idFunc int not null,
  designacao varchar(50) default null,
  presenca tinyint(1) DEFAULT NULL,
  descricao varchar(50) default null,
  datacontrol date,
  PRIMARY KEY(id),

  INDEX fk_assiduidade_Funcionario_idx (idFunc ASC),
  CONSTRAINT fk_assiduidade_Funcionario FOREIGN KEY (idFunc)REFERENCES funcionario (id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table abonosDescontos(
  id int not null auto_increment,
  idOrcamentoVenda int not null,
  designacao varchar(50) default null,
  percentagem double null,
  valor decimal(10,2) default 0.00,
  periodo date,
  descricao varchar(50) default null,

  PRIMARY KEY(id),

  INDEX fk_abonosDescontos_orcamentoVenda_idx (idOrcamentoVenda ASC),
  CONSTRAINT fk_abonosDescontos_orcamentoVenda FOREIGN KEY (idOrcamentoVenda )REFERENCES orcamentoVenda (id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE

)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table moeda(
  id int not null auto_increment,
  codigo nvarchar(50) null,
  designacao nvarchar(50) DEFAULT NULL,
  PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO moeda VALUES ("0","AKZ","Kwanza(Angola)");
INSERT INTO moeda VALUES ("0","USD","Dólar ($)");
INSERT INTO moeda VALUES ("0","EURO","EURO (€)");

create table periodo(
  codigo nvarchar(50) Null,
  designacao nvarchar(100) DEFAULT NULL,
  PRIMARY KEY (codigo)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO periodo VALUES ("P01","Período Mensal");
INSERT INTO periodo VALUES ("P02","Período Semanal");
INSERT INTO periodo VALUES ("P03","Período Diário");
INSERT INTO periodo VALUES ("P04","Período Trimestral");
INSERT INTO periodo VALUES ("P05","Período Simestral");
INSERT INTO periodo VALUES ("P06","Período Anual");

create table tipoProc(
  id int not null auto_increment,
  designacao nvarchar(100) DEFAULT NULL,
  PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO tipoProc VALUES ("0","Vecimento");
INSERT INTO tipoProc VALUES ("0","Vecimento/subsídios");
INSERT INTO tipoProc VALUES ("0","subsídio de férias");
INSERT INTO tipoProc VALUES ("0","Subsídio de Pré-Maternidade");
INSERT INTO tipoProc VALUES ("0","Subsídio de Maternidade");
INSERT INTO tipoProc VALUES ("0","Subsídio de Aleitamento");
INSERT INTO tipoProc VALUES ("0","Subsídio por Morte");
INSERT INTO tipoProc VALUES ("0","Subsídio de Funeral");

create table contrato(
  id int(11)not null auto_increment,
  idFunc int(11) not null,
  codigoFunc nvarchar(50) null,
  designacao varchar(50) null,
  departamento int(11) null,
  categoria int(11) null,
  NIF nvarchar(50) null,
  NISS nvarchar(50) null,
  tipoContrato int(11) null,
  dataInicio date null,
  dataFim date null,
  descricao varchar(50) null,
  valorUnit decimal(10,2) default 0.00,
  IRT int(11) not null,
  seguracaSocil int(11) not null,
  seguracaSocilP int(11) not null,

  PRIMARY KEY(id),

  INDEX fk_contrato_Funcionario_idx (idFunc ASC),
  CONSTRAINT fk_contrato_Funcionario FOREIGN KEY (idFunc)REFERENCES funcionario (id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE,

  INDEX fk_contrato_Departamento_idx (departamento ASC),
  CONSTRAINT fk_contrato_Departamento FOREIGN KEY (departamento)REFERENCES departamento (id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE,

  INDEX fk_contrato_categoria_idx (categoria ASC),
  CONSTRAINT fk_contrato_categoria FOREIGN KEY (categoria)REFERENCES categoriaFun (id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE,

  INDEX fk_contrato_tipoContrato_idx (tipoContrato ASC),
  CONSTRAINT fk_contrato_tipoContrato FOREIGN KEY (tipoContrato)REFERENCES tipoFuncionarios (id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE

)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table processamento(
   id int not null auto_increment,
   idFunc int not null,
   codigoFunc nvarchar(50) null,
   designacao varchar(50) null,
   idDesconto int null,
   idSubcidio int null,

   periodo nvarchar(50) null,
   descriPeriodo nvarchar(50) null,

   tipoProc nvarchar(50) null,
   valorBase decimal(10,2) default 0.00,
   valorPeriodo decimal(10,2) default 0.00,
   descontoIRT decimal(10,2) default 0.00,
   descontoSocial decimal(10,2) default 0.00,
   quantidade double null,
   moeda nvarchar(50) null,
   totalDesconto decimal(10,2) default 0.00,
   total decimal(10,2) default 0.00,
   dataProc date not null,

  PRIMARY KEY(id),

  INDEX fk_processamento_Funcionario_idx (idFunc ASC),
  CONSTRAINT fk_processamento_Funcionario FOREIGN KEY (idFunc)REFERENCES funcionario (id)
  ON DELETE NO ACTION
  ON UPDATE CASCADE

)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table vecimento(
 id int not null auto_increment,
 idProc int not null,
 descricao nvarchar(50) null,
 tipo nvarchar(50) null,

 idFunc int  null,
 codigoFunc nvarchar(50) null,
 designacao varchar(50) null,

 periodo date,
 dataProc date, 
 
 quantidade int null,

 valorUnit decimal(10,2) default 0.00,
 descontoIRT decimal(10,2) default 0.00,
 descontoSocial decimal(10,2) default 0.00,
 totalDesconto decimal(10,2) default 0.00,
 totalLiquido decimal(10,2) default 0.00,

  valorPagar decimal(10,2) default 0.00,
  
  moeda nvarchar(11) null,
  estado nvarchar(11) null,
  modo nvarchar(11) null,

PRIMARY KEY(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table conta(
  id int not null auto_increment,
  
  dataMovimento dateTime,
  movimento nvarchar(50)  null,
  descricao nvarchar(50)  null,
  
  designacao nvarchar(50) null,
  numero nvarchar(50)  null,
  tipoConta nvarchar(50) null,
  balcao nvarchar(50)  null,

  saldo decimal(10,2),
  limite decimal(10,2),
  primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


#SET SQL_MODE=@OLD_SQL_MODE;
#SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
#SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
#SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT;
#SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS;
#SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION;
#SET SQL_NOTES=@OLD_SQL_NOTES; 

