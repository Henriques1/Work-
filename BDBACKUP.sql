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
#
#
CREATE TABLE CONTAS(
    idP INT NOT Null AUTO_INCREMENT, 
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
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1133','Melhoramento em equipamentos básicos','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','114 ','Equipamento de carga e trasporte','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1141','.................................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','115','Equipamento administrativo','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1151','Equipamento informático','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1152','Equipamento social','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1153','Mobiliário','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','116','Taras e vasilhame','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1161','Embalagens retornáveis ','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1162','......................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','119','Outras imobilizações corpóreas','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1191','..............................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','12','IMOBILIZAÇÕES INCORPÓREAS','R','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1201','Banco........','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','121','Trespasses','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1211','Trespasses....','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','122','Despesas de investigação e Deselvovimento','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1221','.........................................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','123','Propriedade industrial e outros direitos e contratos','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1231','Propriedade industrial e outros direitos e contratos','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1232','....................................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','124','Despesas de constituição','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1241','Despesas de constituição','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1242','.........................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','129','Outras imobilizações incorpóreas','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1291','Outras imobilizações incorpóreas','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','13','INVESTIMENTOS FINANCEIROS','R','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','131','Empresas subsidiárias','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1311','Partes de capital','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1312','Obrigações e tít.de participação','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1313','Empréstimos','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','132','Empresas associadas','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1321','Partes de capital','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1322','Obrigações e tít.de participação','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1323','Empréstimos','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','133','Outras empresas','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1331','Partes de capital','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1332','Obrigações e tít.de participação','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1333','Empréstimos','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1334','.....................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','134','Investimentos em imoveis','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1341','..................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','135','Fundos','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1351','...........','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','139','Outros investimentos financeiros','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1391','Diamantes','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1392','Ouro','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1393','Depoósitos bancários','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1394','...................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','14','IMOBILIZAÇÕES EM CURSO','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','141','Obra em curso','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','142','Obra em curso','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','147','Adiantamentos p/conta imob.corpóreo','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1471','...................................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','148','Adiantamentos p/conta de imob.incorpóreo','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1481','....................................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','149','Adiantamentos p/conta de investim.','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1491','...............................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','18','AMORTIZAÇÕES ACUMULADAS','R','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','181','Imobilizações corpóreas','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1811','Terrenos e recursos naturais','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1812','Edifícios e outras construções','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1813','Equipamento básico','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1814','Equipamento de carga e trasporte','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1815','Equipamento administrativo','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1816','Taras e vasilhame','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1817','...................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1819','Outras imobilizações corpóreas','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','182','Imobilizações incorpóreas','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1821','Trespasses','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1822','Despesas de investigação e desenvolvimento','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1823','Propriedade industrial e outros direitos e contratos','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1824','Despesas de constituição','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1825','.....................','','M');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1829','Outras imobilizações incorpóreas','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','183','Investimentos financ.em imoveis','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1831','Terrenos e recursos naturais','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1832','Edifícios e outras construções','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','19','PROVISÕES PARA INVESTIMENTOS FINANCEIROS','R','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','191','Empresas subsidiárias','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1911','Partes de capital','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1912','Obrigações e tít. de participação','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1913','Empréstimos','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1914','.......................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','192','Empresas associadas','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1921','Partes de capital','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1922','Obrigações e tít. de participação','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1923','Empréstimos','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1924','.......................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','193','Outras empresas','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1931','Partes de capital','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1932','Obrigações e tít. de participação','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1933','Empréstimos','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1934','.................................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','194','Fundos','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1941','Partes de capital','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1942','..................................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','199','Outros investimentos financeiros','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1991','Diamantes','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1992','Ouro','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1993','Depoósitos bancários','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','1','1994','..................................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','21','COMPRAS','R','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','211','Matérias-príma, subsidiárias e de consumo','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','2111','Matérias príma','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','21111','Mp.-Mercado Nacional','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','211111','Mp.MN-Custo de factura','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','211118','Mp.MN-imputações','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','21112','Mp.-Mercado Estrangeiro','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','211121','Mp.-Mercado Africano','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','2111211','Mp.-MA-Custo de factura','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','2111218','Mp.MA-imputações','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','211122','Mp.-Outros Mercado','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','2111221','Mp.OM-Custo de factura','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','2111228','Mp.OM-imputações','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','2111318','.................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','212','Mercadorias','I',''); 
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','2121','......................','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','217','Devolução de compras','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','2171','....................','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','218','Descontos e abatimentos em compras','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','2181','..................................','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','219','Adiantamentos de Clientes','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','22','MATÉRIAS-PRIMAS SUBSIDIÁRIAS E DE CONSUMO','R','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','221','Matérias-prímas','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','2211','Mp-Existênccias','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','2212','.........................................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','222','Matérias subsidiárias','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','2221','..........................................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','223','Matérias diversos','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','2231','...........................................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','224','Embalagens de consumo','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','2241','............................................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','225','Outros materiais','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','2251','.............................................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','23','PRODUTOS E TRABALHOS EM CURSO','R',''); 
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','231','Ptc-Existências','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','232','.............................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','24','PRODUTOS ACABADOS E INTERMÉDIO','R','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','241','Produtos acabados','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','2411','................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','242','Produtos intermédios','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','2421','................','','M');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','249','Em poder de terceiros','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','2491','','......................','M');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','25','SUB-PRODUTOS, DESPERDÍCIOS, RESÍDUOS E REFUGOS','R','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','251','Sub-produtos','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','2511','......................................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','252','Desperdícios, resíduos e refugos','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','2521','.......................................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','26','MERCADORIAS','R','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','261','Mercadorias','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','2611','.......................................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','262','.........................................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','269','Em poder de terceiros','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','2691','.........................................','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','27','MATÉRIAS-PRIMAS, MERCADORIAS E OUTROS','R','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','271','Matérias-príma','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','2711','........................................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','272','Outros materiais','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','2721','.........................................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','273','Mercadorias','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','2731','..........................................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','28','ADIANTAMENTOS POR CONTA DE COMPRAS','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','281','Matérias-príma e outros materiais','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','2811','.................................','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','282','Mercadorias','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','2821','.................................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','29','PROVISÃO PARA DEPRECIAÇÃO DE EXISTÊNCIAS','R','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','291','......................................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','292','Matérias-príma subsidiárias e de consumo','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','2921','.......................................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','293','Produtos e trabalhos em curso','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','2931','.............................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','294','Produtos acabados e intermédios','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','2941','...........................','','M');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','295','Sub-produtos, desperdícios, residuos e refugos','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','2951','.......................................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','296','Mercadorias','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','2','2961','..........','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','31','CLIENTES','R','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','311','Clientes-Correntes','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3111','Grupo','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','31111','subsidiárias','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','31112','Associadas','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3112','Não grupo','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','31121','Nacionais','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','31122','Estrangeiros','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','312','Clintes-títulos a receber','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3121','Grupo','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','31211','subsidiárias','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','31212','Associadas','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3122','Não grupo','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','31221','Nacionais','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','31222','Estrangeiros','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','313','Clientes-títulos descontados ','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3131','Grupo','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','31311','subsidiárias','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','31312','Associadas','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3132','Não grupo','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','31321','Nacionais','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','31322','Estrangeiros','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','31323','............','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','318','Clientes de cobrança duvidosa','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3181','Clientes-correntes','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3182','Clintes-títulos','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','319','Clientes-Saldos credores','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3191','Adiantamentos','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3192','Embalagens a devolver','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3193','Material à consignação','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','32','FORNECEDORES','R','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','321','Fornecedores-correntes','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3211','Grupo','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','32111','subsidiárias','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','32112','Associadas','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3212','Não grupo','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','32121','Nacionais','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','32122','Estrangeiros','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','322','Fornecedores-titulos a pagar','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3221','Grupo','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','32211','subsidiárias','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','322111','Nacionais','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','322112','Estrangeiros','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','32212','Associadas','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3222','Não grupo','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','32221','Nacionais','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','32222','Estrangeiros','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','328','Fornecedores-factura em recepção e conferência','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3281','.......................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','329','Fornecedores: saldos devedores','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3291','Adiantamentos','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3292','Embalagens a devolver','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3293','Material à consignação','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','33','EMPRÉSTIMOS','R','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','331','Empréstimos bancários','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3311','Moeda nacional','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','33111','Banco','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3312','Moeda Estrangeiros','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','33121','Banco','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','332','Empréstimos por obrigações','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3321','Convertíveis','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','33211','Entidade','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','33212','.................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3322','Não convertíveis','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','33221','Entidade','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','33222','................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','333','Empréstimos por tít de participação','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3331','Entidade','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3332','..........................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','339','Outros Empréstimos obtidos','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3391','Entidade','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','33911','.......................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','34','ESTADO','R','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','341','Imposto sobre os lucros','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3411','......................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','342','Imposto de produção e consumo','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3421','............................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','343','Imposto de rendimento de trabalho','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3431','Imposto de rendimento de trabalho','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3432','................................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','344','Imposto de circulação','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3441','Imposto de circulação','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3442','..............................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','347','Imposto de selo','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3471','..............................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','348','Subsidios a preço','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3481','Subsidios a preço','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3482','..................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','349','Outros imposto','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3491','.......................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','35','ENTIDADES PARTICIPANTES E PARTICIPADAS','R','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','351','Entidades participantes','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3511','Estado','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','35111','c/subscrição','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','35112','c/adiantamentos sobre lucros','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','35113','c/lucros','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','35114','Empréstimos','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3512','Empresas do grupo-subsidiárias','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','35121','c/subscrição','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','35122','c/adiantamentos sobre lucros','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','35123','c/lucros','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','35124','Empréstimos','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3513','Empresas do grupo-associadas','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','35131','C/Subscrição','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','35132','c/adiantamentos sobre lucros','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','35133','c/lucros','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','35134','Empréstimos','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3514','Outros','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','35141','c/subscrição','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','35142','c/adiantamentos sobre lucros','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','35143','c/lucros','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','35144','Empréstimos','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','35145','.............................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','352','Entidades participadas','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3521','Estado','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','35211','c/subscrição','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','35212','c/adiantamentos sobre lucros','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','35213','c/lucros','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','35214','Empréstimos','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','35215','........................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3522','Empresas do grupo- subsidiárias','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','35221','c/subscrição','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','35222','c/adiantamentos sobre lucros','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','35223','c/lucros','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','35224','Empréstimos','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','35225','...................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3523','Empresas do grupo-associadas','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','35231','c/subscrição','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','35232','c/adiantamentos sobre lucros','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','35233','c/lucros','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','35234','Empréstimos','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','35235','.....................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3524','Outros','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','35241','c/subscrição','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','35242','c/adiantamentos sobre lucros','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','35243','c/lucros','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','35244','Empréstimos','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','35245','.................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','36','PESSOAL','R','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','361','Pessoal-remuneração','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3611','Órgãos sociais','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','36111','.............','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3612','Empregados','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','36121','.................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','362','Pessoal-participação nos resultados','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3621','Órgãos sociais','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','36211','.....................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3622','Empregados','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','36221','.........................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','363','Pessoal-adiantamentos','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3631','.......................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','369','Pessoal-outros','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3691','....................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','37','OUTROS VALORES A RECEBER E A PAGAR','R','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','371','Compras de imobilizado','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3711','Corpóreo','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3712','incorpóreo','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3713','Financeiro','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3714','...............','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','372','Vendas de imobilizado','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3721','Corpóreo','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3722','incorpóreo','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3723','Financeiro','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3724','...................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','373','Proveitos a facturar','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3731','Vendas','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3732','Prestações de serviço','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3733','Juros','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3734','..................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','374','Encargos a repartir por períodos futuros','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3741','Descontos de emissão de obrigações','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3742','Descontos de emissão de títulos de participação','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3743','...........................................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','375','Encargos a pagar','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3751','Remunerações','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3752','Juros','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3753','.................................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','376','Proveitos a repartir por períodos futuros','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3761','Prémios de emissão de obrigações','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3762','Prémios´de emissão de títulos de participação','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3763','Subsidios para investimento','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3764','Diferenças de câmbio favoráveis reveriveis','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','377','Contas transitórias','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3771','Transacções entre a sede e as dependências da empresa','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3772','..........................................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','379','Outros valores a receber e a pagar','I','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','3791','....................................','M','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','38','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');
INSERT INTO CONTAS (idP,classe,conta,descricao,tipo,categoria) VALUES ('0','3','','','','');

#
#
CREATE TABLE DIARIOS(
    diarioID int NOT NULL AUTO_INCREMENT,
    diario varchar(50)NOT NULL,
    descri varchar(50)NOT Null,
    lancamento varchar(50)DEFAULT NULL,
    descriLanc varchar(50)DEFAULT Null,
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
CREATE TABLE MOVIMENTOS(
    movID int NOT NULL AUTO_INCREMENT,
    documento varchar(50) NOT Null,
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
CREATE TABLE BALANCET(
    id int NOT NULL AUTO_INCREMENT,
    documento varchar(50) Not Null,
    conta varchar(50)Not null,
    descricao varchar(100) DEFAULT NULL,
    Debito decimal(12,2) DEFAULT NULL,
    Credito decimal(12,2) DEFAULT NULL,
    saldoDev decimal(12,2) DEFAULT NULL,
    saldoCre decimal(12,2) DEFAULT NULL,
    empresa varchar(50) DEFAULT NULL,
    nif varchar(50) DEFAULT NULL,
    periodo varchar(50) DEFAULT NULL,
    dataExe date DEFAULT NULL,
    PRIMARY KEY(id)
)ENGINE=InnoDB;
#
#
