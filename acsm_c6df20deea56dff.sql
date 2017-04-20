/*
Navicat MySQL Data Transfer

Source Server         : azure1
Source Server Version : 50545
Source Host           : us-cdbr-azure-central-a.cloudapp.net:3306
Source Database       : acsm_c6df20deea56dff

Target Server Type    : MYSQL
Target Server Version : 50545
File Encoding         : 65001

Date: 2017-04-14 23:24:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for assento
-- ----------------------------
DROP TABLE IF EXISTS `assento`;
CREATE TABLE `assento` (
  `cd_letra_assento` char(1) NOT NULL,
  `cd_numero_assento` decimal(2,0) NOT NULL,
  `cd_sala` smallint(6) NOT NULL,
  PRIMARY KEY (`cd_letra_assento`,`cd_numero_assento`),
  KEY `fk_assento_sala` (`cd_sala`),
  CONSTRAINT `fk_assento_sala` FOREIGN KEY (`cd_sala`) REFERENCES `sala` (`cd_sala`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of assento
-- ----------------------------

-- ----------------------------
-- Table structure for cargo
-- ----------------------------
DROP TABLE IF EXISTS `cargo`;
CREATE TABLE `cargo` (
  `cd_cargo` tinyint(4) NOT NULL AUTO_INCREMENT,
  `nm_cargo` varchar(30) NOT NULL,
  PRIMARY KEY (`cd_cargo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cargo
-- ----------------------------
INSERT INTO `cargo` VALUES ('1', 'Gerente');
INSERT INTO `cargo` VALUES ('2', 'Presidente');
INSERT INTO `cargo` VALUES ('3', 'Gesttor');

-- ----------------------------
-- Table structure for categoria
-- ----------------------------
DROP TABLE IF EXISTS `categoria`;
CREATE TABLE `categoria` (
  `cd_categoria` tinyint(4) NOT NULL AUTO_INCREMENT,
  `nm_categoria` varchar(50) NOT NULL,
  PRIMARY KEY (`cd_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of categoria
-- ----------------------------
INSERT INTO `categoria` VALUES ('1', 'Bebidas');
INSERT INTO `categoria` VALUES ('2', 'Salgados');
INSERT INTO `categoria` VALUES ('3', 'Doces');
INSERT INTO `categoria` VALUES ('5', 'Brindes');

-- ----------------------------
-- Table structure for cidade
-- ----------------------------
DROP TABLE IF EXISTS `cidade`;
CREATE TABLE `cidade` (
  `cd_cidade` mediumint(9) NOT NULL AUTO_INCREMENT,
  `nm_cidade` varchar(100) NOT NULL,
  `cd_estado` mediumint(9) NOT NULL,
  PRIMARY KEY (`cd_cidade`),
  KEY `fk_cidade_estado` (`cd_estado`),
  CONSTRAINT `fk_cidade_estado` FOREIGN KEY (`cd_estado`) REFERENCES `estado` (`cd_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=7382 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cidade
-- ----------------------------
INSERT INTO `cidade` VALUES ('1', 'Adamantina', '1');
INSERT INTO `cidade` VALUES ('11', 'Adolfo', '1');
INSERT INTO `cidade` VALUES ('21', 'Aguaí', '1');
INSERT INTO `cidade` VALUES ('31', 'Águas da Prata', '1');
INSERT INTO `cidade` VALUES ('41', 'Águas de Lindóia', '1');
INSERT INTO `cidade` VALUES ('51', 'Águas de Santa Bárbara', '1');
INSERT INTO `cidade` VALUES ('61', 'Águas de São Pedro', '1');
INSERT INTO `cidade` VALUES ('71', 'Agudos', '1');
INSERT INTO `cidade` VALUES ('81', 'Alambari', '1');
INSERT INTO `cidade` VALUES ('91', 'Alfredo Marcondes', '1');
INSERT INTO `cidade` VALUES ('101', 'Altair', '1');
INSERT INTO `cidade` VALUES ('111', 'Altinópolis', '1');
INSERT INTO `cidade` VALUES ('121', 'Alto Alegre', '1');
INSERT INTO `cidade` VALUES ('131', 'Alumínio', '1');
INSERT INTO `cidade` VALUES ('141', 'Álvares Florence', '1');
INSERT INTO `cidade` VALUES ('151', 'Álvares Machado', '1');
INSERT INTO `cidade` VALUES ('161', 'Álvaro de Carvalho', '1');
INSERT INTO `cidade` VALUES ('171', 'Alvinlândia', '1');
INSERT INTO `cidade` VALUES ('181', 'Americana', '1');
INSERT INTO `cidade` VALUES ('191', 'Américo Brasiliense', '1');
INSERT INTO `cidade` VALUES ('201', 'Américo de Campos', '1');
INSERT INTO `cidade` VALUES ('211', 'Amparo', '1');
INSERT INTO `cidade` VALUES ('221', 'Analândia', '1');
INSERT INTO `cidade` VALUES ('231', 'Andradina', '1');
INSERT INTO `cidade` VALUES ('241', 'Angatuba', '1');
INSERT INTO `cidade` VALUES ('251', 'Anhembi', '1');
INSERT INTO `cidade` VALUES ('261', 'Anhumas', '1');
INSERT INTO `cidade` VALUES ('271', 'Aparecida', '1');
INSERT INTO `cidade` VALUES ('281', 'Aparecida d\'Oeste', '1');
INSERT INTO `cidade` VALUES ('291', 'Apiaí', '1');
INSERT INTO `cidade` VALUES ('301', 'Araçariguama', '1');
INSERT INTO `cidade` VALUES ('311', 'Araçatuba', '1');
INSERT INTO `cidade` VALUES ('321', 'Araçoiaba da Serra', '1');
INSERT INTO `cidade` VALUES ('331', 'Aramina', '1');
INSERT INTO `cidade` VALUES ('341', 'Arandu', '1');
INSERT INTO `cidade` VALUES ('351', 'Arapeí', '1');
INSERT INTO `cidade` VALUES ('361', 'Araraquara', '1');
INSERT INTO `cidade` VALUES ('371', 'Araras', '1');
INSERT INTO `cidade` VALUES ('381', 'Arco-Íris', '1');
INSERT INTO `cidade` VALUES ('391', 'Arealva', '1');
INSERT INTO `cidade` VALUES ('401', 'Areias', '1');
INSERT INTO `cidade` VALUES ('411', 'Areiópolis', '1');
INSERT INTO `cidade` VALUES ('421', 'Ariranha', '1');
INSERT INTO `cidade` VALUES ('431', 'Artur Nogueira', '1');
INSERT INTO `cidade` VALUES ('441', 'Arujá', '1');
INSERT INTO `cidade` VALUES ('451', 'Aspásia', '1');
INSERT INTO `cidade` VALUES ('461', 'Assis', '1');
INSERT INTO `cidade` VALUES ('471', 'Atibaia', '1');
INSERT INTO `cidade` VALUES ('481', 'Auriflama', '1');
INSERT INTO `cidade` VALUES ('491', 'Avaí', '1');
INSERT INTO `cidade` VALUES ('501', 'Avanhandava', '1');
INSERT INTO `cidade` VALUES ('511', 'Avaré', '1');
INSERT INTO `cidade` VALUES ('521', 'Bady Bassitt', '1');
INSERT INTO `cidade` VALUES ('531', 'Balbinos', '1');
INSERT INTO `cidade` VALUES ('541', 'Bálsamo', '1');
INSERT INTO `cidade` VALUES ('551', 'Bananal', '1');
INSERT INTO `cidade` VALUES ('561', 'Barão de Antonina', '1');
INSERT INTO `cidade` VALUES ('571', 'Barbosa', '1');
INSERT INTO `cidade` VALUES ('581', 'Bariri', '1');
INSERT INTO `cidade` VALUES ('591', 'Barra Bonita', '1');
INSERT INTO `cidade` VALUES ('601', 'Barra do Chapéu', '1');
INSERT INTO `cidade` VALUES ('611', 'Barra do Turvo', '1');
INSERT INTO `cidade` VALUES ('621', 'Barretos', '1');
INSERT INTO `cidade` VALUES ('631', 'Barrinha', '1');
INSERT INTO `cidade` VALUES ('641', 'Barueri', '1');
INSERT INTO `cidade` VALUES ('651', 'Bastos', '1');
INSERT INTO `cidade` VALUES ('661', 'Batatais', '1');
INSERT INTO `cidade` VALUES ('671', 'Bauru', '1');
INSERT INTO `cidade` VALUES ('681', 'Bebedouro', '1');
INSERT INTO `cidade` VALUES ('691', 'Bento de Abreu', '1');
INSERT INTO `cidade` VALUES ('701', 'Bernardino de Campos', '1');
INSERT INTO `cidade` VALUES ('711', 'Bertioga', '1');
INSERT INTO `cidade` VALUES ('721', 'Bilac', '1');
INSERT INTO `cidade` VALUES ('731', 'Birigui', '1');
INSERT INTO `cidade` VALUES ('741', 'Biritibamirim', '1');
INSERT INTO `cidade` VALUES ('751', 'Boa Esperança do Sul', '1');
INSERT INTO `cidade` VALUES ('761', 'Bocaina', '1');
INSERT INTO `cidade` VALUES ('771', 'Bofete', '1');
INSERT INTO `cidade` VALUES ('781', 'Boituva', '1');
INSERT INTO `cidade` VALUES ('791', 'Bom Jesus dos Perdões', '1');
INSERT INTO `cidade` VALUES ('801', 'Bom Sucesso de Itararé', '1');
INSERT INTO `cidade` VALUES ('811', 'Borá', '1');
INSERT INTO `cidade` VALUES ('821', 'Boracéia', '1');
INSERT INTO `cidade` VALUES ('831', 'Borborema', '1');
INSERT INTO `cidade` VALUES ('841', 'Borebi', '1');
INSERT INTO `cidade` VALUES ('851', 'Botucatu', '1');
INSERT INTO `cidade` VALUES ('861', 'Bragança Paulista', '1');
INSERT INTO `cidade` VALUES ('871', 'Braúna', '1');
INSERT INTO `cidade` VALUES ('881', 'Brejo Alegre', '1');
INSERT INTO `cidade` VALUES ('891', 'Brodowski', '1');
INSERT INTO `cidade` VALUES ('901', 'Brotas', '1');
INSERT INTO `cidade` VALUES ('911', 'Buri', '1');
INSERT INTO `cidade` VALUES ('921', 'Buritama', '1');
INSERT INTO `cidade` VALUES ('931', 'Buritizal', '1');
INSERT INTO `cidade` VALUES ('941', 'Cabrália Paulista', '1');
INSERT INTO `cidade` VALUES ('951', 'Cabreúva', '1');
INSERT INTO `cidade` VALUES ('961', 'Caçapava', '1');
INSERT INTO `cidade` VALUES ('971', 'Cachoeira Paulista', '1');
INSERT INTO `cidade` VALUES ('981', 'Caconde', '1');
INSERT INTO `cidade` VALUES ('991', 'Cafelândia', '1');
INSERT INTO `cidade` VALUES ('1001', 'Caiabu', '1');
INSERT INTO `cidade` VALUES ('1011', 'Caieiras', '1');
INSERT INTO `cidade` VALUES ('1021', 'Caiuá', '1');
INSERT INTO `cidade` VALUES ('1031', 'Cajamar', '1');
INSERT INTO `cidade` VALUES ('1041', 'Cajati', '1');
INSERT INTO `cidade` VALUES ('1051', 'Cajobi', '1');
INSERT INTO `cidade` VALUES ('1061', 'Cajuru', '1');
INSERT INTO `cidade` VALUES ('1071', 'Campina do Monte Alegre', '1');
INSERT INTO `cidade` VALUES ('1081', 'Campinas', '1');
INSERT INTO `cidade` VALUES ('1091', 'Campo Limpo Paulista', '1');
INSERT INTO `cidade` VALUES ('1101', 'Campos do Jordão', '1');
INSERT INTO `cidade` VALUES ('1111', 'Campos Novos Paulista', '1');
INSERT INTO `cidade` VALUES ('1121', 'Cananéia', '1');
INSERT INTO `cidade` VALUES ('1131', 'Canas', '1');
INSERT INTO `cidade` VALUES ('1141', 'Cândido Mota', '1');
INSERT INTO `cidade` VALUES ('1151', 'Cândido Rodrigues', '1');
INSERT INTO `cidade` VALUES ('1161', 'Canitar', '1');
INSERT INTO `cidade` VALUES ('1171', 'Capão Bonito', '1');
INSERT INTO `cidade` VALUES ('1181', 'Capela do Alto', '1');
INSERT INTO `cidade` VALUES ('1191', 'Capivari', '1');
INSERT INTO `cidade` VALUES ('1201', 'Caraguatatuba', '1');
INSERT INTO `cidade` VALUES ('1211', 'Carapicuíba', '1');
INSERT INTO `cidade` VALUES ('1221', 'Cardoso', '1');
INSERT INTO `cidade` VALUES ('1231', 'Casa Branca', '1');
INSERT INTO `cidade` VALUES ('1241', 'Cássia dos Coqueiros', '1');
INSERT INTO `cidade` VALUES ('1251', 'Castilho', '1');
INSERT INTO `cidade` VALUES ('1261', 'Catanduva', '1');
INSERT INTO `cidade` VALUES ('1271', 'Catiguá', '1');
INSERT INTO `cidade` VALUES ('1281', 'Cedral', '1');
INSERT INTO `cidade` VALUES ('1291', 'Cerqueira César', '1');
INSERT INTO `cidade` VALUES ('1301', 'Cerquilho', '1');
INSERT INTO `cidade` VALUES ('1311', 'Cesário Lange', '1');
INSERT INTO `cidade` VALUES ('1321', 'Charqueada', '1');
INSERT INTO `cidade` VALUES ('1331', 'Chavantes', '1');
INSERT INTO `cidade` VALUES ('1341', 'Clementina', '1');
INSERT INTO `cidade` VALUES ('1351', 'Colina', '1');
INSERT INTO `cidade` VALUES ('1361', 'Colômbia', '1');
INSERT INTO `cidade` VALUES ('1371', 'Conchal', '1');
INSERT INTO `cidade` VALUES ('1381', 'Conchas', '1');
INSERT INTO `cidade` VALUES ('1391', 'Cordeirópolis', '1');
INSERT INTO `cidade` VALUES ('1401', 'Coroados', '1');
INSERT INTO `cidade` VALUES ('1411', 'Coronel Macedo', '1');
INSERT INTO `cidade` VALUES ('1421', 'Corumbataí', '1');
INSERT INTO `cidade` VALUES ('1431', 'Cosmópolis', '1');
INSERT INTO `cidade` VALUES ('1441', 'Cosmorama', '1');
INSERT INTO `cidade` VALUES ('1451', 'Cotia', '1');
INSERT INTO `cidade` VALUES ('1461', 'Cravinhos', '1');
INSERT INTO `cidade` VALUES ('1471', 'Cristais Paulista', '1');
INSERT INTO `cidade` VALUES ('1481', 'Cruzália', '1');
INSERT INTO `cidade` VALUES ('1491', 'Cruzeiro', '1');
INSERT INTO `cidade` VALUES ('1501', 'Cubatão', '1');
INSERT INTO `cidade` VALUES ('1511', 'Cunha', '1');
INSERT INTO `cidade` VALUES ('1521', 'Descalvado', '1');
INSERT INTO `cidade` VALUES ('1531', 'Diadema', '1');
INSERT INTO `cidade` VALUES ('1541', 'Dirce Reis', '1');
INSERT INTO `cidade` VALUES ('1551', 'Divinolândia', '1');
INSERT INTO `cidade` VALUES ('1561', 'Dobrada', '1');
INSERT INTO `cidade` VALUES ('1571', 'Dois Córregos', '1');
INSERT INTO `cidade` VALUES ('1581', 'Dolcinópolis', '1');
INSERT INTO `cidade` VALUES ('1591', 'Dourado', '1');
INSERT INTO `cidade` VALUES ('1601', 'Dracena', '1');
INSERT INTO `cidade` VALUES ('1611', 'Duartina', '1');
INSERT INTO `cidade` VALUES ('1621', 'Dumont', '1');
INSERT INTO `cidade` VALUES ('1631', 'Echaporã', '1');
INSERT INTO `cidade` VALUES ('1641', 'Eldorado', '1');
INSERT INTO `cidade` VALUES ('1651', 'Elias Fausto', '1');
INSERT INTO `cidade` VALUES ('1661', 'Elisiário', '1');
INSERT INTO `cidade` VALUES ('1671', 'Embaúba', '1');
INSERT INTO `cidade` VALUES ('1681', 'Embu', '1');
INSERT INTO `cidade` VALUES ('1691', 'Embu-Guaçu', '1');
INSERT INTO `cidade` VALUES ('1701', 'Emilianópolis', '1');
INSERT INTO `cidade` VALUES ('1711', 'Engenheiro Coelho', '1');
INSERT INTO `cidade` VALUES ('1721', 'Espírito Santo do Pinhal', '1');
INSERT INTO `cidade` VALUES ('1731', 'Espírito Santo do Turvo', '1');
INSERT INTO `cidade` VALUES ('1741', 'Estiva Gerbi', '1');
INSERT INTO `cidade` VALUES ('1751', 'Estrela do Norte', '1');
INSERT INTO `cidade` VALUES ('1761', 'Estrela d\'Oeste', '1');
INSERT INTO `cidade` VALUES ('1771', 'Euclides da Cunha Paulista', '1');
INSERT INTO `cidade` VALUES ('1781', 'Fartura', '1');
INSERT INTO `cidade` VALUES ('1791', 'Fernando Prestes', '1');
INSERT INTO `cidade` VALUES ('1801', 'Fernandópolis', '1');
INSERT INTO `cidade` VALUES ('1811', 'Fernão', '1');
INSERT INTO `cidade` VALUES ('1821', 'Ferraz de Vasconcelos', '1');
INSERT INTO `cidade` VALUES ('1831', 'Flora Rica', '1');
INSERT INTO `cidade` VALUES ('1841', 'Floreal', '1');
INSERT INTO `cidade` VALUES ('1851', 'Flórida Paulista', '1');
INSERT INTO `cidade` VALUES ('1861', 'Florínea', '1');
INSERT INTO `cidade` VALUES ('1871', 'Franca', '1');
INSERT INTO `cidade` VALUES ('1881', 'Francisco Morato', '1');
INSERT INTO `cidade` VALUES ('1891', 'Franco da Rocha', '1');
INSERT INTO `cidade` VALUES ('1901', 'Gabriel Monteiro', '1');
INSERT INTO `cidade` VALUES ('1911', 'Gália', '1');
INSERT INTO `cidade` VALUES ('1921', 'Garça', '1');
INSERT INTO `cidade` VALUES ('1931', 'Gastão Vidigal', '1');
INSERT INTO `cidade` VALUES ('1941', 'Gavião Peixoto', '1');
INSERT INTO `cidade` VALUES ('1951', 'General Salgado', '1');
INSERT INTO `cidade` VALUES ('1961', 'Getulina', '1');
INSERT INTO `cidade` VALUES ('1971', 'Glicério', '1');
INSERT INTO `cidade` VALUES ('1981', 'Guaiçara', '1');
INSERT INTO `cidade` VALUES ('1991', 'Guaimbê', '1');
INSERT INTO `cidade` VALUES ('2001', 'Guaíra', '1');
INSERT INTO `cidade` VALUES ('2011', 'Guapiaçu', '1');
INSERT INTO `cidade` VALUES ('2021', 'Guapiara', '1');
INSERT INTO `cidade` VALUES ('2031', 'Guará', '1');
INSERT INTO `cidade` VALUES ('2041', 'Guaraçaí', '1');
INSERT INTO `cidade` VALUES ('2051', 'Guaraci', '1');
INSERT INTO `cidade` VALUES ('2061', 'Guarani d\'Oeste', '1');
INSERT INTO `cidade` VALUES ('2071', 'Guarantã', '1');
INSERT INTO `cidade` VALUES ('2081', 'Guararapes', '1');
INSERT INTO `cidade` VALUES ('2091', 'Guararema', '1');
INSERT INTO `cidade` VALUES ('2101', 'Guaratinguetá', '1');
INSERT INTO `cidade` VALUES ('2111', 'Guareí', '1');
INSERT INTO `cidade` VALUES ('2121', 'Guariba', '1');
INSERT INTO `cidade` VALUES ('2131', 'Guarujá', '1');
INSERT INTO `cidade` VALUES ('2141', 'Guarulhos', '1');
INSERT INTO `cidade` VALUES ('2151', 'Guatapará', '1');
INSERT INTO `cidade` VALUES ('2161', 'Guzolândia', '1');
INSERT INTO `cidade` VALUES ('2171', 'Herculândia', '1');
INSERT INTO `cidade` VALUES ('2181', 'Holambra', '1');
INSERT INTO `cidade` VALUES ('2191', 'Hortolândia', '1');
INSERT INTO `cidade` VALUES ('2201', 'Iacanga', '1');
INSERT INTO `cidade` VALUES ('2211', 'Iacri', '1');
INSERT INTO `cidade` VALUES ('2221', 'Iaras', '1');
INSERT INTO `cidade` VALUES ('2231', 'Ibaté', '1');
INSERT INTO `cidade` VALUES ('2241', 'Ibirá', '1');
INSERT INTO `cidade` VALUES ('2251', 'Ibirarema', '1');
INSERT INTO `cidade` VALUES ('2261', 'Ibitinga', '1');
INSERT INTO `cidade` VALUES ('2271', 'Ibiúna', '1');
INSERT INTO `cidade` VALUES ('2281', 'Icém', '1');
INSERT INTO `cidade` VALUES ('2291', 'Iepê', '1');
INSERT INTO `cidade` VALUES ('2301', 'Igaraçu do Tietê', '1');
INSERT INTO `cidade` VALUES ('2311', 'Igarapava', '1');
INSERT INTO `cidade` VALUES ('2321', 'Igaratá', '1');
INSERT INTO `cidade` VALUES ('2331', 'Iguape', '1');
INSERT INTO `cidade` VALUES ('2341', 'Ilha Comprida', '1');
INSERT INTO `cidade` VALUES ('2351', 'Ilha Solteira', '1');
INSERT INTO `cidade` VALUES ('2361', 'Ilhabela', '1');
INSERT INTO `cidade` VALUES ('2371', 'Indaiatuba', '1');
INSERT INTO `cidade` VALUES ('2381', 'Indiana', '1');
INSERT INTO `cidade` VALUES ('2391', 'Indiaporã', '1');
INSERT INTO `cidade` VALUES ('2401', 'Inúbia Paulista', '1');
INSERT INTO `cidade` VALUES ('2411', 'Ipaussu', '1');
INSERT INTO `cidade` VALUES ('2421', 'Iperó', '1');
INSERT INTO `cidade` VALUES ('2431', 'Ipeúna', '1');
INSERT INTO `cidade` VALUES ('2441', 'Ipiguá', '1');
INSERT INTO `cidade` VALUES ('2451', 'Iporanga', '1');
INSERT INTO `cidade` VALUES ('2461', 'Ipuã', '1');
INSERT INTO `cidade` VALUES ('2471', 'Iracemápolis', '1');
INSERT INTO `cidade` VALUES ('2481', 'Irapuã', '1');
INSERT INTO `cidade` VALUES ('2491', 'Irapuru', '1');
INSERT INTO `cidade` VALUES ('2501', 'Itaberá', '1');
INSERT INTO `cidade` VALUES ('2511', 'Itaí', '1');
INSERT INTO `cidade` VALUES ('2521', 'Itajobi', '1');
INSERT INTO `cidade` VALUES ('2531', 'Itaju', '1');
INSERT INTO `cidade` VALUES ('2541', 'Itanhaém', '1');
INSERT INTO `cidade` VALUES ('2551', 'Itaóca', '1');
INSERT INTO `cidade` VALUES ('2561', 'Itapecerica da Serra', '1');
INSERT INTO `cidade` VALUES ('2571', 'Itapetininga', '1');
INSERT INTO `cidade` VALUES ('2581', 'Itapeva', '1');
INSERT INTO `cidade` VALUES ('2591', 'Itapevi', '1');
INSERT INTO `cidade` VALUES ('2601', 'Itapira', '1');
INSERT INTO `cidade` VALUES ('2611', 'Itapirapuã Paulista', '1');
INSERT INTO `cidade` VALUES ('2621', 'Itápolis', '1');
INSERT INTO `cidade` VALUES ('2631', 'Itaporanga', '1');
INSERT INTO `cidade` VALUES ('2641', 'Itapuí', '1');
INSERT INTO `cidade` VALUES ('2651', 'Itapura', '1');
INSERT INTO `cidade` VALUES ('2661', 'Itaquaquecetuba', '1');
INSERT INTO `cidade` VALUES ('2671', 'Itararé', '1');
INSERT INTO `cidade` VALUES ('2681', 'Itariri', '1');
INSERT INTO `cidade` VALUES ('2691', 'Itatiba', '1');
INSERT INTO `cidade` VALUES ('2701', 'Itatinga', '1');
INSERT INTO `cidade` VALUES ('2711', 'Itirapina', '1');
INSERT INTO `cidade` VALUES ('2721', 'Itirapuã', '1');
INSERT INTO `cidade` VALUES ('2731', 'Itobi', '1');
INSERT INTO `cidade` VALUES ('2741', 'Itu', '1');
INSERT INTO `cidade` VALUES ('2751', 'Itupeva', '1');
INSERT INTO `cidade` VALUES ('2761', 'Ituverava', '1');
INSERT INTO `cidade` VALUES ('2771', 'Jaborandi', '1');
INSERT INTO `cidade` VALUES ('2781', 'Jaboticabal', '1');
INSERT INTO `cidade` VALUES ('2791', 'Jacareí', '1');
INSERT INTO `cidade` VALUES ('2801', 'Jaci', '1');
INSERT INTO `cidade` VALUES ('2811', 'Jacupiranga', '1');
INSERT INTO `cidade` VALUES ('2821', 'Jaguariúna', '1');
INSERT INTO `cidade` VALUES ('2831', 'Jales', '1');
INSERT INTO `cidade` VALUES ('2841', 'Jambeiro', '1');
INSERT INTO `cidade` VALUES ('2851', 'Jandira', '1');
INSERT INTO `cidade` VALUES ('2861', 'Jardinópolis', '1');
INSERT INTO `cidade` VALUES ('2871', 'Jarinu', '1');
INSERT INTO `cidade` VALUES ('2881', 'Jaú', '1');
INSERT INTO `cidade` VALUES ('2891', 'Jeriquara', '1');
INSERT INTO `cidade` VALUES ('2901', 'Joanópolis', '1');
INSERT INTO `cidade` VALUES ('2911', 'João Ramalho', '1');
INSERT INTO `cidade` VALUES ('2921', 'José Bonifácio', '1');
INSERT INTO `cidade` VALUES ('2931', 'Júlio Mesquita', '1');
INSERT INTO `cidade` VALUES ('2941', 'Jumirim', '1');
INSERT INTO `cidade` VALUES ('2951', 'Jundiaí', '1');
INSERT INTO `cidade` VALUES ('2961', 'Junqueirópolis', '1');
INSERT INTO `cidade` VALUES ('2971', 'Juquiá', '1');
INSERT INTO `cidade` VALUES ('2981', 'Juquitiba', '1');
INSERT INTO `cidade` VALUES ('2991', 'Lagoinha', '1');
INSERT INTO `cidade` VALUES ('3001', 'Laranjal Paulista', '1');
INSERT INTO `cidade` VALUES ('3011', 'Lavínia', '1');
INSERT INTO `cidade` VALUES ('3021', 'Lavrinhas', '1');
INSERT INTO `cidade` VALUES ('3031', 'Leme', '1');
INSERT INTO `cidade` VALUES ('3041', 'Lençóis Paulista', '1');
INSERT INTO `cidade` VALUES ('3051', 'Limeira', '1');
INSERT INTO `cidade` VALUES ('3061', 'Lindóia', '1');
INSERT INTO `cidade` VALUES ('3071', 'Lins', '1');
INSERT INTO `cidade` VALUES ('3081', 'Lorena', '1');
INSERT INTO `cidade` VALUES ('3091', 'Lourdes', '1');
INSERT INTO `cidade` VALUES ('3101', 'Louveira', '1');
INSERT INTO `cidade` VALUES ('3111', 'Lucélia', '1');
INSERT INTO `cidade` VALUES ('3121', 'Lucianópolis', '1');
INSERT INTO `cidade` VALUES ('3131', 'Luís Antônio', '1');
INSERT INTO `cidade` VALUES ('3141', 'Luiziânia', '1');
INSERT INTO `cidade` VALUES ('3151', 'Lupércio', '1');
INSERT INTO `cidade` VALUES ('3161', 'Lutécia', '1');
INSERT INTO `cidade` VALUES ('3171', 'Macatuba', '1');
INSERT INTO `cidade` VALUES ('3181', 'Macaubal', '1');
INSERT INTO `cidade` VALUES ('3191', 'Macedônia', '1');
INSERT INTO `cidade` VALUES ('3201', 'Magda', '1');
INSERT INTO `cidade` VALUES ('3211', 'Mairinque', '1');
INSERT INTO `cidade` VALUES ('3221', 'Mairiporã', '1');
INSERT INTO `cidade` VALUES ('3231', 'Manduri', '1');
INSERT INTO `cidade` VALUES ('3241', 'Marabá Paulista', '1');
INSERT INTO `cidade` VALUES ('3251', 'Maracaí', '1');
INSERT INTO `cidade` VALUES ('3261', 'Marapoama', '1');
INSERT INTO `cidade` VALUES ('3271', 'Mariápolis', '1');
INSERT INTO `cidade` VALUES ('3281', 'Marília', '1');
INSERT INTO `cidade` VALUES ('3291', 'Marinópolis', '1');
INSERT INTO `cidade` VALUES ('3301', 'Martinópolis', '1');
INSERT INTO `cidade` VALUES ('3311', 'Matão', '1');
INSERT INTO `cidade` VALUES ('3321', 'Mauá', '1');
INSERT INTO `cidade` VALUES ('3331', 'Mendonça', '1');
INSERT INTO `cidade` VALUES ('3341', 'Meridiano', '1');
INSERT INTO `cidade` VALUES ('3351', 'Mesópolis', '1');
INSERT INTO `cidade` VALUES ('3361', 'Miguelópolis', '1');
INSERT INTO `cidade` VALUES ('3371', 'Mineiros do Tietê', '1');
INSERT INTO `cidade` VALUES ('3381', 'Mira Estrela', '1');
INSERT INTO `cidade` VALUES ('3391', 'Miracatu', '1');
INSERT INTO `cidade` VALUES ('3401', 'Mirandópolis', '1');
INSERT INTO `cidade` VALUES ('3411', 'Mirante do Paranapanema', '1');
INSERT INTO `cidade` VALUES ('3421', 'Mirassol', '1');
INSERT INTO `cidade` VALUES ('3431', 'Mirassolândia', '1');
INSERT INTO `cidade` VALUES ('3441', 'Mococa', '1');
INSERT INTO `cidade` VALUES ('3451', 'Mogi das Cruzes', '1');
INSERT INTO `cidade` VALUES ('3461', 'Mogi Guaçu', '1');
INSERT INTO `cidade` VALUES ('3471', 'Mogi Mirim', '1');
INSERT INTO `cidade` VALUES ('3481', 'Mombuca', '1');
INSERT INTO `cidade` VALUES ('3491', 'Monções', '1');
INSERT INTO `cidade` VALUES ('3501', 'Mongaguá', '1');
INSERT INTO `cidade` VALUES ('3511', 'Monte Alegre do Sul', '1');
INSERT INTO `cidade` VALUES ('3521', 'Monte Alto', '1');
INSERT INTO `cidade` VALUES ('3531', 'Monte Aprazível', '1');
INSERT INTO `cidade` VALUES ('3541', 'Monte Azul Paulista', '1');
INSERT INTO `cidade` VALUES ('3551', 'Monte Castelo', '1');
INSERT INTO `cidade` VALUES ('3561', 'Monte Mor', '1');
INSERT INTO `cidade` VALUES ('3571', 'Monteiro Lobato', '1');
INSERT INTO `cidade` VALUES ('3581', 'Morro Agudo', '1');
INSERT INTO `cidade` VALUES ('3591', 'Morungaba', '1');
INSERT INTO `cidade` VALUES ('3601', 'Motuca', '1');
INSERT INTO `cidade` VALUES ('3611', 'Murutinga do Sul', '1');
INSERT INTO `cidade` VALUES ('3621', 'Nantes', '1');
INSERT INTO `cidade` VALUES ('3631', 'Narandiba', '1');
INSERT INTO `cidade` VALUES ('3641', 'Natividade da Serra', '1');
INSERT INTO `cidade` VALUES ('3651', 'Nazaré Paulista', '1');
INSERT INTO `cidade` VALUES ('3661', 'Neves Paulista', '1');
INSERT INTO `cidade` VALUES ('3671', 'Nhandeara', '1');
INSERT INTO `cidade` VALUES ('3681', 'Nipoã', '1');
INSERT INTO `cidade` VALUES ('3691', 'Nova Aliança', '1');
INSERT INTO `cidade` VALUES ('3701', 'Nova Campina', '1');
INSERT INTO `cidade` VALUES ('3711', 'Nova Canaã Paulista', '1');
INSERT INTO `cidade` VALUES ('3721', 'Nova Castilho', '1');
INSERT INTO `cidade` VALUES ('3731', 'Nova Europa', '1');
INSERT INTO `cidade` VALUES ('3741', 'Nova Granada', '1');
INSERT INTO `cidade` VALUES ('3751', 'Nova Guataporanga', '1');
INSERT INTO `cidade` VALUES ('3761', 'Nova Independência', '1');
INSERT INTO `cidade` VALUES ('3771', 'Nova Luzitânia', '1');
INSERT INTO `cidade` VALUES ('3781', 'Nova Odessa', '1');
INSERT INTO `cidade` VALUES ('3791', 'Novais', '1');
INSERT INTO `cidade` VALUES ('3801', 'Novo Horizonte', '1');
INSERT INTO `cidade` VALUES ('3811', 'Nuporanga', '1');
INSERT INTO `cidade` VALUES ('3821', 'Ocauçu', '1');
INSERT INTO `cidade` VALUES ('3831', 'Óleo', '1');
INSERT INTO `cidade` VALUES ('3841', 'Olímpia', '1');
INSERT INTO `cidade` VALUES ('3851', 'Onda Verde', '1');
INSERT INTO `cidade` VALUES ('3861', 'Oriente', '1');
INSERT INTO `cidade` VALUES ('3871', 'Orindiúva', '1');
INSERT INTO `cidade` VALUES ('3881', 'Orlândia', '1');
INSERT INTO `cidade` VALUES ('3891', 'Osasco', '1');
INSERT INTO `cidade` VALUES ('3901', 'Oscar Bressane', '1');
INSERT INTO `cidade` VALUES ('3911', 'Osvaldo Cruz', '1');
INSERT INTO `cidade` VALUES ('3921', 'Ourinhos', '1');
INSERT INTO `cidade` VALUES ('3931', 'Ouro Verde', '1');
INSERT INTO `cidade` VALUES ('3941', 'Ouroeste', '1');
INSERT INTO `cidade` VALUES ('3951', 'Pacaembu', '1');
INSERT INTO `cidade` VALUES ('3961', 'Palestina', '1');
INSERT INTO `cidade` VALUES ('3971', 'Palmares Paulista', '1');
INSERT INTO `cidade` VALUES ('3981', 'Palmeira d\'Oeste', '1');
INSERT INTO `cidade` VALUES ('3991', 'Palmital', '1');
INSERT INTO `cidade` VALUES ('4001', 'Panorama', '1');
INSERT INTO `cidade` VALUES ('4011', 'Paraguaçu Paulista', '1');
INSERT INTO `cidade` VALUES ('4021', 'Paraibuna', '1');
INSERT INTO `cidade` VALUES ('4031', 'Paraíso', '1');
INSERT INTO `cidade` VALUES ('4041', 'Paranapanema', '1');
INSERT INTO `cidade` VALUES ('4051', 'Paranapuã', '1');
INSERT INTO `cidade` VALUES ('4061', 'Parapuã', '1');
INSERT INTO `cidade` VALUES ('4071', 'Pardinho', '1');
INSERT INTO `cidade` VALUES ('4081', 'Pariquera-Açu', '1');
INSERT INTO `cidade` VALUES ('4091', 'Parisi', '1');
INSERT INTO `cidade` VALUES ('4101', 'Patrocínio Paulista', '1');
INSERT INTO `cidade` VALUES ('4111', 'Paulicéia', '1');
INSERT INTO `cidade` VALUES ('4121', 'Paulínia', '1');
INSERT INTO `cidade` VALUES ('4131', 'Paulistânia', '1');
INSERT INTO `cidade` VALUES ('4141', 'Paulo de Faria', '1');
INSERT INTO `cidade` VALUES ('4151', 'Pederneiras', '1');
INSERT INTO `cidade` VALUES ('4161', 'Pedra Bela', '1');
INSERT INTO `cidade` VALUES ('4171', 'Pedranópolis', '1');
INSERT INTO `cidade` VALUES ('4181', 'Pedregulho', '1');
INSERT INTO `cidade` VALUES ('4191', 'Pedreira', '1');
INSERT INTO `cidade` VALUES ('4201', 'Pedrinhas Paulista', '1');
INSERT INTO `cidade` VALUES ('4211', 'Pedro de Toledo', '1');
INSERT INTO `cidade` VALUES ('4221', 'Penápolis', '1');
INSERT INTO `cidade` VALUES ('4231', 'Pereira Barreto', '1');
INSERT INTO `cidade` VALUES ('4241', 'Pereiras', '1');
INSERT INTO `cidade` VALUES ('4251', 'Peruíbe', '1');
INSERT INTO `cidade` VALUES ('4261', 'Piacatu', '1');
INSERT INTO `cidade` VALUES ('4271', 'Piedade', '1');
INSERT INTO `cidade` VALUES ('4281', 'Pilar do Sul', '1');
INSERT INTO `cidade` VALUES ('4291', 'Pindamonhangaba', '1');
INSERT INTO `cidade` VALUES ('4301', 'Pindorama', '1');
INSERT INTO `cidade` VALUES ('4311', 'Pinhalzinho', '1');
INSERT INTO `cidade` VALUES ('4321', 'Piquerobi', '1');
INSERT INTO `cidade` VALUES ('4331', 'Piquete', '1');
INSERT INTO `cidade` VALUES ('4341', 'Piracaia', '1');
INSERT INTO `cidade` VALUES ('4351', 'Piracicaba', '1');
INSERT INTO `cidade` VALUES ('4361', 'Piraju', '1');
INSERT INTO `cidade` VALUES ('4371', 'Pirajuí', '1');
INSERT INTO `cidade` VALUES ('4381', 'Pirangi', '1');
INSERT INTO `cidade` VALUES ('4391', 'Pirapora do Bom Jesus', '1');
INSERT INTO `cidade` VALUES ('4401', 'Pirapozinho', '1');
INSERT INTO `cidade` VALUES ('4411', 'Pirassununga', '1');
INSERT INTO `cidade` VALUES ('4421', 'Piratininga', '1');
INSERT INTO `cidade` VALUES ('4431', 'Pitangueiras', '1');
INSERT INTO `cidade` VALUES ('4441', 'Planalto', '1');
INSERT INTO `cidade` VALUES ('4451', 'Platina', '1');
INSERT INTO `cidade` VALUES ('4461', 'Poá', '1');
INSERT INTO `cidade` VALUES ('4471', 'Poloni', '1');
INSERT INTO `cidade` VALUES ('4481', 'Pompeia', '1');
INSERT INTO `cidade` VALUES ('4491', 'Pongaí', '1');
INSERT INTO `cidade` VALUES ('4501', 'Pontal', '1');
INSERT INTO `cidade` VALUES ('4511', 'Pontalinda', '1');
INSERT INTO `cidade` VALUES ('4521', 'Pontes Gestal', '1');
INSERT INTO `cidade` VALUES ('4531', 'Populina', '1');
INSERT INTO `cidade` VALUES ('4541', 'Porangaba', '1');
INSERT INTO `cidade` VALUES ('4551', 'Porto Feliz', '1');
INSERT INTO `cidade` VALUES ('4561', 'Porto Ferreira', '1');
INSERT INTO `cidade` VALUES ('4571', 'Potim', '1');
INSERT INTO `cidade` VALUES ('4581', 'Potirendaba', '1');
INSERT INTO `cidade` VALUES ('4591', 'Pracinha', '1');
INSERT INTO `cidade` VALUES ('4601', 'Pradópolis', '1');
INSERT INTO `cidade` VALUES ('4611', 'Praia Grande', '1');
INSERT INTO `cidade` VALUES ('4621', 'Pratânia', '1');
INSERT INTO `cidade` VALUES ('4631', 'Presidente Alves', '1');
INSERT INTO `cidade` VALUES ('4641', 'Presidente Bernardes', '1');
INSERT INTO `cidade` VALUES ('4651', 'Presidente Epitácio', '1');
INSERT INTO `cidade` VALUES ('4661', 'Presidente Prudente', '1');
INSERT INTO `cidade` VALUES ('4671', 'Presidente Venceslau', '1');
INSERT INTO `cidade` VALUES ('4681', 'Promissão', '1');
INSERT INTO `cidade` VALUES ('4691', 'Quadra', '1');
INSERT INTO `cidade` VALUES ('4701', 'Quatá', '1');
INSERT INTO `cidade` VALUES ('4711', 'Queiroz', '1');
INSERT INTO `cidade` VALUES ('4721', 'Queluz', '1');
INSERT INTO `cidade` VALUES ('4731', 'Quintana', '1');
INSERT INTO `cidade` VALUES ('4741', 'Rafard', '1');
INSERT INTO `cidade` VALUES ('4751', 'Rancharia', '1');
INSERT INTO `cidade` VALUES ('4761', 'Redenção da Serra', '1');
INSERT INTO `cidade` VALUES ('4771', 'Regente Feijó', '1');
INSERT INTO `cidade` VALUES ('4781', 'Reginópolis', '1');
INSERT INTO `cidade` VALUES ('4791', 'Registro', '1');
INSERT INTO `cidade` VALUES ('4801', 'Restinga', '1');
INSERT INTO `cidade` VALUES ('4811', 'Ribeira', '1');
INSERT INTO `cidade` VALUES ('4821', 'Ribeirão Bonito', '1');
INSERT INTO `cidade` VALUES ('4831', 'Ribeirão Branco', '1');
INSERT INTO `cidade` VALUES ('4841', 'Ribeirão Corrente', '1');
INSERT INTO `cidade` VALUES ('4851', 'Ribeirão do Sul', '1');
INSERT INTO `cidade` VALUES ('4861', 'Ribeirão dos Índios', '1');
INSERT INTO `cidade` VALUES ('4871', 'Ribeirão Grande', '1');
INSERT INTO `cidade` VALUES ('4881', 'Ribeirão Pires', '1');
INSERT INTO `cidade` VALUES ('4891', 'Ribeirão Preto', '1');
INSERT INTO `cidade` VALUES ('4901', 'Rifaina', '1');
INSERT INTO `cidade` VALUES ('4911', 'Rincão', '1');
INSERT INTO `cidade` VALUES ('4921', 'Rinópolis', '1');
INSERT INTO `cidade` VALUES ('4931', 'Rio Claro', '1');
INSERT INTO `cidade` VALUES ('4941', 'Rio das Pedras', '1');
INSERT INTO `cidade` VALUES ('4951', 'Rio Grande da Serra', '1');
INSERT INTO `cidade` VALUES ('4961', 'Riolândia', '1');
INSERT INTO `cidade` VALUES ('4971', 'Riversul', '1');
INSERT INTO `cidade` VALUES ('4981', 'Rosana', '1');
INSERT INTO `cidade` VALUES ('4991', 'Roseira', '1');
INSERT INTO `cidade` VALUES ('5001', 'Rubiácea', '1');
INSERT INTO `cidade` VALUES ('5011', 'Rubinéia', '1');
INSERT INTO `cidade` VALUES ('5021', 'Sabino', '1');
INSERT INTO `cidade` VALUES ('5031', 'Sagres', '1');
INSERT INTO `cidade` VALUES ('5041', 'Sales', '1');
INSERT INTO `cidade` VALUES ('5051', 'Sales Oliveira', '1');
INSERT INTO `cidade` VALUES ('5061', 'Salesópolis', '1');
INSERT INTO `cidade` VALUES ('5071', 'Salmourão', '1');
INSERT INTO `cidade` VALUES ('5081', 'Saltinho', '1');
INSERT INTO `cidade` VALUES ('5091', 'Salto', '1');
INSERT INTO `cidade` VALUES ('5101', 'Salto de Pirapora', '1');
INSERT INTO `cidade` VALUES ('5111', 'Salto Grande', '1');
INSERT INTO `cidade` VALUES ('5121', 'Sandovalina', '1');
INSERT INTO `cidade` VALUES ('5131', 'Santa Adélia', '1');
INSERT INTO `cidade` VALUES ('5141', 'Santa Albertina', '1');
INSERT INTO `cidade` VALUES ('5151', 'Santa Bárbara d\'Oeste', '1');
INSERT INTO `cidade` VALUES ('5161', 'Santa Branca', '1');
INSERT INTO `cidade` VALUES ('5171', 'Santa Clara d\'Oeste', '1');
INSERT INTO `cidade` VALUES ('5181', 'Santa Cruz da Conceição', '1');
INSERT INTO `cidade` VALUES ('5191', 'Santa Cruz da Esperança', '1');
INSERT INTO `cidade` VALUES ('5201', 'Santa Cruz das Palmeiras', '1');
INSERT INTO `cidade` VALUES ('5211', 'Santa Cruz do Rio Pardo', '1');
INSERT INTO `cidade` VALUES ('5221', 'Santa Ernestina', '1');
INSERT INTO `cidade` VALUES ('5231', 'Santa Fé do Sul', '1');
INSERT INTO `cidade` VALUES ('5241', 'Santa Gertrudes', '1');
INSERT INTO `cidade` VALUES ('5251', 'Santa Isabel', '1');
INSERT INTO `cidade` VALUES ('5261', 'Santa Lúcia', '1');
INSERT INTO `cidade` VALUES ('5271', 'Santa Maria da Serra', '1');
INSERT INTO `cidade` VALUES ('5281', 'Santa Mercedes', '1');
INSERT INTO `cidade` VALUES ('5291', 'Santa Rita do Passa-Quatro', '1');
INSERT INTO `cidade` VALUES ('5301', 'Santa Rita d\'Oeste', '1');
INSERT INTO `cidade` VALUES ('5311', 'Santa Rosa de Viterbo', '1');
INSERT INTO `cidade` VALUES ('5321', 'Santa Salete', '1');
INSERT INTO `cidade` VALUES ('5331', 'Santana da Ponte Pensa', '1');
INSERT INTO `cidade` VALUES ('5341', 'Santana de Parnaíba', '1');
INSERT INTO `cidade` VALUES ('5351', 'Santo Anastácio', '1');
INSERT INTO `cidade` VALUES ('5361', 'Santo André', '1');
INSERT INTO `cidade` VALUES ('5371', 'Santo Antônio da Alegria', '1');
INSERT INTO `cidade` VALUES ('5381', 'Santo Antônio de Posse', '1');
INSERT INTO `cidade` VALUES ('5391', 'Santo Antônio do Aracanguá', '1');
INSERT INTO `cidade` VALUES ('5401', 'Santo Antônio do Jardim', '1');
INSERT INTO `cidade` VALUES ('5411', 'Santo Antônio do Pinhal', '1');
INSERT INTO `cidade` VALUES ('5421', 'Santo Expedito', '1');
INSERT INTO `cidade` VALUES ('5431', 'Santópolis do Aguapeí', '1');
INSERT INTO `cidade` VALUES ('5441', 'Santos', '1');
INSERT INTO `cidade` VALUES ('5451', 'São Bento do Sapucaí', '1');
INSERT INTO `cidade` VALUES ('5461', 'São Bernardo do Campo', '1');
INSERT INTO `cidade` VALUES ('5471', 'São Caetano do Sul', '1');
INSERT INTO `cidade` VALUES ('5481', 'São Carlos', '1');
INSERT INTO `cidade` VALUES ('5491', 'São Francisco', '1');
INSERT INTO `cidade` VALUES ('5501', 'São João da Boa Vista', '1');
INSERT INTO `cidade` VALUES ('5511', 'São João das Duas Pontes', '1');
INSERT INTO `cidade` VALUES ('5521', 'São João de Iracema', '1');
INSERT INTO `cidade` VALUES ('5531', 'São João do Pau d\'Alho', '1');
INSERT INTO `cidade` VALUES ('5541', 'São Joaquim da Barra', '1');
INSERT INTO `cidade` VALUES ('5551', 'São José da Bela Vista', '1');
INSERT INTO `cidade` VALUES ('5561', 'São José do Barreiro', '1');
INSERT INTO `cidade` VALUES ('5571', 'São José do Rio Pardo', '1');
INSERT INTO `cidade` VALUES ('5581', 'São José do Rio Preto', '1');
INSERT INTO `cidade` VALUES ('5591', 'São José dos Campos', '1');
INSERT INTO `cidade` VALUES ('5601', 'São Lourenço da Serra', '1');
INSERT INTO `cidade` VALUES ('5611', 'São Luiz do Paraitinga', '1');
INSERT INTO `cidade` VALUES ('5621', 'São Manuel', '1');
INSERT INTO `cidade` VALUES ('5631', 'São Miguel Arcanjo', '1');
INSERT INTO `cidade` VALUES ('5641', 'São Paulo', '1');
INSERT INTO `cidade` VALUES ('5651', 'São Pedro', '1');
INSERT INTO `cidade` VALUES ('5661', 'São Pedro do Turvo', '1');
INSERT INTO `cidade` VALUES ('5671', 'São Roque', '1');
INSERT INTO `cidade` VALUES ('5681', 'São Sebastião', '1');
INSERT INTO `cidade` VALUES ('5691', 'São Sebastião da Grama', '1');
INSERT INTO `cidade` VALUES ('5701', 'São Simão', '1');
INSERT INTO `cidade` VALUES ('5711', 'São Vicente', '1');
INSERT INTO `cidade` VALUES ('5721', 'Sarapuí', '1');
INSERT INTO `cidade` VALUES ('5731', 'Sarutaiá', '1');
INSERT INTO `cidade` VALUES ('5741', 'Sebastianópolis do Sul', '1');
INSERT INTO `cidade` VALUES ('5751', 'Serra Azul', '1');
INSERT INTO `cidade` VALUES ('5761', 'Serra Negra', '1');
INSERT INTO `cidade` VALUES ('5771', 'Serrana', '1');
INSERT INTO `cidade` VALUES ('5781', 'Sertãozinho', '1');
INSERT INTO `cidade` VALUES ('5791', 'Sete Barras', '1');
INSERT INTO `cidade` VALUES ('5801', 'Severínia', '1');
INSERT INTO `cidade` VALUES ('5811', 'Silveiras', '1');
INSERT INTO `cidade` VALUES ('5821', 'Socorro', '1');
INSERT INTO `cidade` VALUES ('5831', 'Sorocaba', '1');
INSERT INTO `cidade` VALUES ('5841', 'Sud Mennucci', '1');
INSERT INTO `cidade` VALUES ('5851', 'Sumaré', '1');
INSERT INTO `cidade` VALUES ('5861', 'Suzanápolis', '1');
INSERT INTO `cidade` VALUES ('5871', 'Suzano', '1');
INSERT INTO `cidade` VALUES ('5881', 'Tabapuã', '1');
INSERT INTO `cidade` VALUES ('5891', 'Tabatinga', '1');
INSERT INTO `cidade` VALUES ('5901', 'Taboão da Serra', '1');
INSERT INTO `cidade` VALUES ('5911', 'Taciba', '1');
INSERT INTO `cidade` VALUES ('5921', 'Taguaí', '1');
INSERT INTO `cidade` VALUES ('5931', 'Taiaçu', '1');
INSERT INTO `cidade` VALUES ('5941', 'Taiúva', '1');
INSERT INTO `cidade` VALUES ('5951', 'Tambaú', '1');
INSERT INTO `cidade` VALUES ('5961', 'Tanabi', '1');
INSERT INTO `cidade` VALUES ('5971', 'Tapiraí', '1');
INSERT INTO `cidade` VALUES ('5981', 'Tapiratiba', '1');
INSERT INTO `cidade` VALUES ('5991', 'Taquaral', '1');
INSERT INTO `cidade` VALUES ('6001', 'Taquaritinga', '1');
INSERT INTO `cidade` VALUES ('6011', 'Taquarituba', '1');
INSERT INTO `cidade` VALUES ('6021', 'Taquarivaí', '1');
INSERT INTO `cidade` VALUES ('6031', 'Tarabai', '1');
INSERT INTO `cidade` VALUES ('6041', 'Tarumã', '1');
INSERT INTO `cidade` VALUES ('6051', 'Tatuí', '1');
INSERT INTO `cidade` VALUES ('6061', 'Taubaté', '1');
INSERT INTO `cidade` VALUES ('6071', 'Tejupá', '1');
INSERT INTO `cidade` VALUES ('6081', 'Teodoro Sampaio', '1');
INSERT INTO `cidade` VALUES ('6091', 'Terra Roxa', '1');
INSERT INTO `cidade` VALUES ('6101', 'Tietê', '1');
INSERT INTO `cidade` VALUES ('6111', 'Timbo', '1');
INSERT INTO `cidade` VALUES ('6121', 'Timburi', '1');
INSERT INTO `cidade` VALUES ('6131', 'Torre de Pedra', '1');
INSERT INTO `cidade` VALUES ('6141', 'Torrinha', '1');
INSERT INTO `cidade` VALUES ('6151', 'Trabiju', '1');
INSERT INTO `cidade` VALUES ('6161', 'Tremembé', '1');
INSERT INTO `cidade` VALUES ('6171', 'Três Fronteiras', '1');
INSERT INTO `cidade` VALUES ('6181', 'Tuiuti', '1');
INSERT INTO `cidade` VALUES ('6191', 'Tupã', '1');
INSERT INTO `cidade` VALUES ('6201', 'Tupi Paulista', '1');
INSERT INTO `cidade` VALUES ('6211', 'Turiúba', '1');
INSERT INTO `cidade` VALUES ('6221', 'Turmalina', '1');
INSERT INTO `cidade` VALUES ('6231', 'Ubarana', '1');
INSERT INTO `cidade` VALUES ('6241', 'Ubatuba', '1');
INSERT INTO `cidade` VALUES ('6251', 'Ubirajara', '1');
INSERT INTO `cidade` VALUES ('6261', 'Uchoa', '1');
INSERT INTO `cidade` VALUES ('6271', 'União Paulista', '1');
INSERT INTO `cidade` VALUES ('6281', 'Urânia', '1');
INSERT INTO `cidade` VALUES ('6291', 'Uru', '1');
INSERT INTO `cidade` VALUES ('6301', 'Urupês', '1');
INSERT INTO `cidade` VALUES ('6311', 'Valentim Gentil', '1');
INSERT INTO `cidade` VALUES ('6321', 'Valinhos', '1');
INSERT INTO `cidade` VALUES ('6331', 'Valparaíso', '1');
INSERT INTO `cidade` VALUES ('6341', 'Vargem', '1');
INSERT INTO `cidade` VALUES ('6351', 'Vargem Grande do Sul', '1');
INSERT INTO `cidade` VALUES ('6361', 'Vargem Grande Paulista', '1');
INSERT INTO `cidade` VALUES ('6371', 'Várzea Paulista', '1');
INSERT INTO `cidade` VALUES ('6381', 'Vera Cruz', '1');
INSERT INTO `cidade` VALUES ('6391', 'Vinhedo', '1');
INSERT INTO `cidade` VALUES ('6401', 'Viradouro', '1');
INSERT INTO `cidade` VALUES ('6411', 'Vista Alegre do Alto', '1');
INSERT INTO `cidade` VALUES ('6421', 'Vitória Brasil', '1');
INSERT INTO `cidade` VALUES ('6431', 'Votorantim', '1');
INSERT INTO `cidade` VALUES ('6441', 'Votuporanga', '1');
INSERT INTO `cidade` VALUES ('6451', 'Zacarias', '1');
INSERT INTO `cidade` VALUES ('6471', 'Angra dos Reis', '11');
INSERT INTO `cidade` VALUES ('6481', 'Aperibé', '11');
INSERT INTO `cidade` VALUES ('6491', 'Araruama', '11');
INSERT INTO `cidade` VALUES ('6501', 'Areal', '11');
INSERT INTO `cidade` VALUES ('6511', 'Armação dos Búzios', '11');
INSERT INTO `cidade` VALUES ('6521', 'Arraial do Cabo', '11');
INSERT INTO `cidade` VALUES ('6531', 'Barra do Piraí', '11');
INSERT INTO `cidade` VALUES ('6541', 'Barra Mansa', '11');
INSERT INTO `cidade` VALUES ('6551', 'Belford Roxo', '11');
INSERT INTO `cidade` VALUES ('6561', 'Bom Jardim', '11');
INSERT INTO `cidade` VALUES ('6571', 'Bom Jesus do Itabapoana', '11');
INSERT INTO `cidade` VALUES ('6581', 'Cabo Frio', '11');
INSERT INTO `cidade` VALUES ('6591', 'Cachoeiras de Macacu', '11');
INSERT INTO `cidade` VALUES ('6601', 'Cambuci', '11');
INSERT INTO `cidade` VALUES ('6611', 'Campos dos Goytacazes', '11');
INSERT INTO `cidade` VALUES ('6621', 'Cantagalo', '11');
INSERT INTO `cidade` VALUES ('6631', 'Carapebus', '11');
INSERT INTO `cidade` VALUES ('6641', 'Cardoso Moreira', '11');
INSERT INTO `cidade` VALUES ('6651', 'Carmo', '11');
INSERT INTO `cidade` VALUES ('6661', 'Casimiro de Abreu', '11');
INSERT INTO `cidade` VALUES ('6671', 'Comendador Levy Gasparian', '11');
INSERT INTO `cidade` VALUES ('6681', 'Conceição de Macabu', '11');
INSERT INTO `cidade` VALUES ('6691', 'Cordeiro', '11');
INSERT INTO `cidade` VALUES ('6701', 'Duas Barras', '11');
INSERT INTO `cidade` VALUES ('6711', 'Duque de Caxias', '11');
INSERT INTO `cidade` VALUES ('6721', 'Engenheiro Paulo de Frontin', '11');
INSERT INTO `cidade` VALUES ('6731', 'Guapimirim', '11');
INSERT INTO `cidade` VALUES ('6741', 'Iguaba Grande', '11');
INSERT INTO `cidade` VALUES ('6751', 'Itaboraí', '11');
INSERT INTO `cidade` VALUES ('6761', 'Itaguaí', '11');
INSERT INTO `cidade` VALUES ('6771', 'Italva', '11');
INSERT INTO `cidade` VALUES ('6781', 'Itaocara', '11');
INSERT INTO `cidade` VALUES ('6791', 'Itaperuna', '11');
INSERT INTO `cidade` VALUES ('6801', 'Itatiaia', '11');
INSERT INTO `cidade` VALUES ('6811', 'Japeri', '11');
INSERT INTO `cidade` VALUES ('6821', 'Laje do Muriaé', '11');
INSERT INTO `cidade` VALUES ('6831', 'Macaé', '11');
INSERT INTO `cidade` VALUES ('6841', 'Macuco', '11');
INSERT INTO `cidade` VALUES ('6851', 'Magé', '11');
INSERT INTO `cidade` VALUES ('6861', 'Mangaratiba', '11');
INSERT INTO `cidade` VALUES ('6871', 'Maricá', '11');
INSERT INTO `cidade` VALUES ('6881', 'Mendes', '11');
INSERT INTO `cidade` VALUES ('6891', 'Mesquita', '11');
INSERT INTO `cidade` VALUES ('6901', 'Miguel Pereira', '11');
INSERT INTO `cidade` VALUES ('6911', 'Miracema', '11');
INSERT INTO `cidade` VALUES ('6921', 'Natividade', '11');
INSERT INTO `cidade` VALUES ('6931', 'Nilópolis', '11');
INSERT INTO `cidade` VALUES ('6941', 'Niterói', '11');
INSERT INTO `cidade` VALUES ('6951', 'Nova Friburgo', '11');
INSERT INTO `cidade` VALUES ('6961', 'Nova Iguaçu', '11');
INSERT INTO `cidade` VALUES ('6971', 'Paracambi', '11');
INSERT INTO `cidade` VALUES ('6981', 'Paraíba do Sul', '11');
INSERT INTO `cidade` VALUES ('6991', 'Paraty', '11');
INSERT INTO `cidade` VALUES ('7001', 'Paty do Alferes', '11');
INSERT INTO `cidade` VALUES ('7011', 'Petrópolis', '11');
INSERT INTO `cidade` VALUES ('7021', 'Pinheiral', '11');
INSERT INTO `cidade` VALUES ('7031', 'Piraí', '11');
INSERT INTO `cidade` VALUES ('7041', 'Porciúncula', '11');
INSERT INTO `cidade` VALUES ('7051', 'Porto Real', '11');
INSERT INTO `cidade` VALUES ('7061', 'Quatis', '11');
INSERT INTO `cidade` VALUES ('7071', 'Queimados', '11');
INSERT INTO `cidade` VALUES ('7081', 'Quissamã', '11');
INSERT INTO `cidade` VALUES ('7091', 'Resende', '11');
INSERT INTO `cidade` VALUES ('7101', 'Rio Bonito', '11');
INSERT INTO `cidade` VALUES ('7111', 'Rio Claro', '11');
INSERT INTO `cidade` VALUES ('7121', 'Rio das Flores', '11');
INSERT INTO `cidade` VALUES ('7131', 'Rio das Ostras', '11');
INSERT INTO `cidade` VALUES ('7141', 'Rio de Janeiro (capital)', '11');
INSERT INTO `cidade` VALUES ('7151', 'Santa Maria Madalena', '11');
INSERT INTO `cidade` VALUES ('7161', 'Santo Antônio de Pádua', '11');
INSERT INTO `cidade` VALUES ('7171', 'São Fidélis', '11');
INSERT INTO `cidade` VALUES ('7181', 'São Francisco de Itabapoana', '11');
INSERT INTO `cidade` VALUES ('7191', 'São Gonçalo', '11');
INSERT INTO `cidade` VALUES ('7201', 'São João da Barra', '11');
INSERT INTO `cidade` VALUES ('7211', 'São João de Meriti', '11');
INSERT INTO `cidade` VALUES ('7221', 'São José de Ubá', '11');
INSERT INTO `cidade` VALUES ('7231', 'São José do Vale do Rio Preto', '11');
INSERT INTO `cidade` VALUES ('7241', 'São Pedro da Aldeia', '11');
INSERT INTO `cidade` VALUES ('7251', 'São Sebastião do Alto', '11');
INSERT INTO `cidade` VALUES ('7261', 'Sapucaia', '11');
INSERT INTO `cidade` VALUES ('7271', 'Saquarema', '11');
INSERT INTO `cidade` VALUES ('7281', 'Seropédica', '11');
INSERT INTO `cidade` VALUES ('7291', 'Silva Jardim', '11');
INSERT INTO `cidade` VALUES ('7301', 'Sumidouro', '11');
INSERT INTO `cidade` VALUES ('7311', 'Tanguá', '11');
INSERT INTO `cidade` VALUES ('7321', 'Teresópolis', '11');
INSERT INTO `cidade` VALUES ('7331', 'Trajano de Moraes', '11');
INSERT INTO `cidade` VALUES ('7341', 'Três Rios', '11');
INSERT INTO `cidade` VALUES ('7351', 'Valença', '11');
INSERT INTO `cidade` VALUES ('7361', 'Varre-Sai', '11');
INSERT INTO `cidade` VALUES ('7371', 'Vassouras', '11');
INSERT INTO `cidade` VALUES ('7381', 'Volta Redonda', '11');

-- ----------------------------
-- Table structure for cliente
-- ----------------------------
DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente` (
  `cd_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nm_cliente` varchar(100) NOT NULL,
  `nu_rg_cliente` char(13) NOT NULL,
  `nu_cpf_cliente` char(14) NOT NULL,
  `dt_nasc_cliente` date NOT NULL,
  `ds_sexo` enum('M','F') DEFAULT NULL,
  `ds_email` varchar(100) NOT NULL,
  `ds_senha` varchar(100) NOT NULL,
  `nu_estrelas` tinyint(4) NOT NULL,
  PRIMARY KEY (`cd_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cliente
-- ----------------------------
INSERT INTO `cliente` VALUES ('11', 'Beatriz Santos', '530335797', '47865047851', '1965-02-13', 'F', 'beatriz@gmail.com', '12345', '2');
INSERT INTO `cliente` VALUES ('12', 'Júlia Santos', '9999999979', '88888888888', '1970-12-13', 'F', 'julia@gmail.com', '54321', '3');
INSERT INTO `cliente` VALUES ('13', 'Marcos Silva', '7777777777', '33333333333', '1998-05-10', 'M', 'marcos@gmail.com', '54321', '4');
INSERT INTO `cliente` VALUES ('14', 'José Ferreira', '6666666666', '44444444444', '1955-03-09', 'M', 'jose@gmail.com', '1234', '5');
INSERT INTO `cliente` VALUES ('15', 'Matheus Silva', '333333333', '55555555555', '1989-05-07', 'M', 'matheus@gmail.com', '12345', '5');
INSERT INTO `cliente` VALUES ('16', 'Lucas Bernardo', '3333333333', '22222222222', '1995-01-05', 'M', 'lucas@gmail.com', '12345', '3');
INSERT INTO `cliente` VALUES ('17', 'Matheus Lins', '2222222222', '5555555555', '1972-04-08', 'M', 'matheuslins@gmail.com', '12345', '2');
INSERT INTO `cliente` VALUES ('18', 'Vitor Santos', '1111111111', '44444444444', '1955-08-28', 'M', 'vitor@gmail.com', '12345', '1');
INSERT INTO `cliente` VALUES ('19', 'Andreia Lima', '3333333333', '66666666666', '1944-08-22', 'F', 'andreia@gmail.com', '12345', '2');
INSERT INTO `cliente` VALUES ('20', 'Clara Freitas', '6666666666', '88888888888', '1970-12-13', 'F', 'clara@gmail.com', '12345', '3');
INSERT INTO `cliente` VALUES ('21', 'Vitoria Santos', '22279776715', '2977269', '1948-03-14', 'F', 'vitoria@gmail.com', '12345', '4');
INSERT INTO `cliente` VALUES ('22', 'Laura Batista', '63062097434', '429434121', '2000-01-04', 'F', 'laura@gmail.com', '1234', '5');
INSERT INTO `cliente` VALUES ('23', 'Lucas Lima', '82367631107', '418757896', '1988-05-09', 'M', 'lucas@gmail.com', '1234', '4');
INSERT INTO `cliente` VALUES ('24', 'Ana Carolina', '07287821206', '911225341', '1966-05-25', 'F', 'anna@gmail.com', '13345', '5');
INSERT INTO `cliente` VALUES ('25', 'Maria Jose Fernandes', '98961187872', '2977269', '1999-08-27', 'F', 'maria@gmail.com', '12345', '2');
INSERT INTO `cliente` VALUES ('26', 'Júlia Santos', '9999999979', '88888888888', '1970-12-13', 'F', 'julia@gmail.com', '54321', '3');
INSERT INTO `cliente` VALUES ('27', 'Camila Silva', '90389088900', '429434121', '1993-04-05', 'F', 'camila@gmail.com', '12345', '2');
INSERT INTO `cliente` VALUES ('28', 'Guilherme Souza', '90753033941', '418757896', '1995-08-23', 'M', 'guilherme@gmail.com', '54321', '4');
INSERT INTO `cliente` VALUES ('29', 'Gabriel Santos', '24247623095', '2977269', '2001-04-01', 'M', 'gabriel@gmail.com', '12345', '3');
INSERT INTO `cliente` VALUES ('30', 'Gustavo Lucas', '52750284660', '418757896', '2002-05-05', 'M', 'gustavo@gmail.com', '12345', '1');
INSERT INTO `cliente` VALUES ('31', 'Arthur Santos', '97613078914', '2977269', '2001-06-06', 'M', 'arthur@gmail.com', '54321', '3');
INSERT INTO `cliente` VALUES ('32', 'João Santos', '97613078914', '429434121', '1970-12-13', 'F', 'joão@gmail.com', '54321', '3');
INSERT INTO `cliente` VALUES ('33', 'Pedro Santos', '37271803238', '403289440', '1969-01-05', 'M', 'pedro@gmail.com', '54321', '3');
INSERT INTO `cliente` VALUES ('34', 'Davi Santos', '99169125643', '2977269', '1959-06-25', 'M', 'davi@gmail.com', '54321', '3');
INSERT INTO `cliente` VALUES ('35', 'Felipe Bastos', '79228133503', '911225341', '1989-12-05', 'M', 'felipe@gmail.com', '54321', '4');
INSERT INTO `cliente` VALUES ('36', 'Vinicius Lima', '15869412595', '429434121', '1970-12-13', 'M', 'vinicius@gmail.com', '54321', '2');
INSERT INTO `cliente` VALUES ('37', 'Henrique Silva', '42735938077', '911225341', '1947-05-05', 'M', 'henrique@gmail.com', '54321', '5');
INSERT INTO `cliente` VALUES ('38', 'Bruno Santos', '48773803456', '418757896', '1985-04-05', 'M', 'bruno@gmail.com', '54321', '5');
INSERT INTO `cliente` VALUES ('39', 'Samuel Silva', '33029754650', '2977269', '1945-05-06', 'M', 'samuel@gmail.com', '54321', '1');
INSERT INTO `cliente` VALUES ('40', 'Diego Santos', '65960182700', '403289440', '1985-05-15', 'M', 'diego@gmail.com', '54321', '1');
INSERT INTO `cliente` VALUES ('41', 'Leonardo Silva', '62203907339', '418757896', '1954-05-06', 'F', 'leonardo@gmail.com', '54321', '3');

-- ----------------------------
-- Table structure for complexo
-- ----------------------------
DROP TABLE IF EXISTS `complexo`;
CREATE TABLE `complexo` (
  `cd_complexo` tinyint(4) NOT NULL AUTO_INCREMENT,
  `nm_complexo` varchar(40) DEFAULT NULL,
  `cd_grupo_complexo` tinyint(4) NOT NULL,
  PRIMARY KEY (`cd_complexo`),
  KEY `fk_complexo_grupo_complexo` (`cd_grupo_complexo`),
  CONSTRAINT `fk_complexo_grupo_complexo` FOREIGN KEY (`cd_grupo_complexo`) REFERENCES `grupo_complexo` (`cd_grupo_complexo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of complexo
-- ----------------------------

-- ----------------------------
-- Table structure for endereco
-- ----------------------------
DROP TABLE IF EXISTS `endereco`;
CREATE TABLE `endereco` (
  `cd_endereco` mediumint(9) NOT NULL AUTO_INCREMENT,
  `tp_logradouro` enum('Rua','Avenida','Praça','Travessa','Alameda','Rodovia','Viaduto') DEFAULT NULL,
  `nm_logradouro` varchar(100) NOT NULL,
  `ds_complemento` varchar(100) DEFAULT NULL,
  `nm_bairro` varchar(60) NOT NULL,
  `cd_cidade` mediumint(9) NOT NULL,
  `cd_complexo` tinyint(4) NOT NULL,
  PRIMARY KEY (`cd_endereco`),
  KEY `fk_complexo_endereco` (`cd_complexo`),
  KEY `fk_endereco_cidade` (`cd_cidade`),
  CONSTRAINT `fk_complexo_endereco` FOREIGN KEY (`cd_complexo`) REFERENCES `complexo` (`cd_complexo`),
  CONSTRAINT `fk_endereco_cidade` FOREIGN KEY (`cd_cidade`) REFERENCES `cidade` (`cd_cidade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of endereco
-- ----------------------------

-- ----------------------------
-- Table structure for estado
-- ----------------------------
DROP TABLE IF EXISTS `estado`;
CREATE TABLE `estado` (
  `cd_estado` mediumint(9) NOT NULL AUTO_INCREMENT,
  `nm_estado` varchar(80) NOT NULL,
  `sg_estado` char(2) NOT NULL,
  `cd_pais` smallint(6) NOT NULL,
  PRIMARY KEY (`cd_estado`),
  KEY `fk_estado_pais` (`cd_pais`),
  CONSTRAINT `fk_estado_pais` FOREIGN KEY (`cd_pais`) REFERENCES `pais` (`cd_pais`)
) ENGINE=InnoDB AUTO_INCREMENT=762 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of estado
-- ----------------------------
INSERT INTO `estado` VALUES ('1', 'São Paulo', 'SP', '1');
INSERT INTO `estado` VALUES ('11', 'Rio de Janeiro', 'RJ', '1');
INSERT INTO `estado` VALUES ('21', 'Minas Gerais', 'MG', '1');
INSERT INTO `estado` VALUES ('31', 'Acre', 'AC', '1');
INSERT INTO `estado` VALUES ('41', 'Alagoas', 'AL', '1');
INSERT INTO `estado` VALUES ('51', 'Amapá', 'AP', '1');
INSERT INTO `estado` VALUES ('61', 'Amazonas', 'AM', '1');
INSERT INTO `estado` VALUES ('71', 'Bahia', 'BA', '1');
INSERT INTO `estado` VALUES ('81', 'Ceará', 'CE', '1');
INSERT INTO `estado` VALUES ('91', 'Distrito Federal', 'DF', '1');
INSERT INTO `estado` VALUES ('101', 'Espírito Santo', 'ES', '1');
INSERT INTO `estado` VALUES ('111', 'Goiás', 'GO', '1');
INSERT INTO `estado` VALUES ('121', 'Maranhão', 'MA', '1');
INSERT INTO `estado` VALUES ('131', 'Mato Grosso', 'MT', '1');
INSERT INTO `estado` VALUES ('141', 'Mato Grosso do Sul', 'MS', '1');
INSERT INTO `estado` VALUES ('151', 'Pará', 'PA', '1');
INSERT INTO `estado` VALUES ('161', 'Paraíba', 'PB', '1');
INSERT INTO `estado` VALUES ('171', 'Paraná', 'PR', '1');
INSERT INTO `estado` VALUES ('181', 'Pernambuco', 'PE', '1');
INSERT INTO `estado` VALUES ('191', 'Piauí', 'PI', '1');
INSERT INTO `estado` VALUES ('201', 'Rio Grande do Norte', 'RN', '1');
INSERT INTO `estado` VALUES ('211', 'Rio Grande do Sul', 'RS', '1');
INSERT INTO `estado` VALUES ('221', 'Rondônia', 'RO', '1');
INSERT INTO `estado` VALUES ('231', 'Roraima', 'RR', '1');
INSERT INTO `estado` VALUES ('241', 'Santa Catarina', 'SC', '1');
INSERT INTO `estado` VALUES ('251', 'Sergipe', 'SE', '1');
INSERT INTO `estado` VALUES ('261', 'Tocantins', 'TO', '1');
INSERT INTO `estado` VALUES ('281', 'Alabama', 'AL', '721');
INSERT INTO `estado` VALUES ('291', 'Arkansas', 'AR', '721');
INSERT INTO `estado` VALUES ('301', 'Arizona', 'AZ', '721');
INSERT INTO `estado` VALUES ('311', 'Califórnia', 'CA', '721');
INSERT INTO `estado` VALUES ('321', 'Colorado', 'CO', '721');
INSERT INTO `estado` VALUES ('331', 'Connecticut', 'CT', '721');
INSERT INTO `estado` VALUES ('341', 'Delaware', 'DE', '721');
INSERT INTO `estado` VALUES ('351', 'Flórida', 'FL', '721');
INSERT INTO `estado` VALUES ('361', 'Geórgia', 'GA', '721');
INSERT INTO `estado` VALUES ('371', 'Havaí', 'HI', '721');
INSERT INTO `estado` VALUES ('381', 'Iowa', 'IA', '721');
INSERT INTO `estado` VALUES ('391', 'Idaho', 'ID', '721');
INSERT INTO `estado` VALUES ('401', 'Illinois', 'IL', '721');
INSERT INTO `estado` VALUES ('411', 'Indiana', 'IN', '721');
INSERT INTO `estado` VALUES ('421', 'Kansas', 'KS', '721');
INSERT INTO `estado` VALUES ('431', 'Kentucky', 'KY', '721');
INSERT INTO `estado` VALUES ('441', 'Louisiana', 'LA', '721');
INSERT INTO `estado` VALUES ('451', 'Massachusetts', 'MA', '721');
INSERT INTO `estado` VALUES ('461', 'Maryland', 'MD', '721');
INSERT INTO `estado` VALUES ('471', 'Maine', 'ME', '721');
INSERT INTO `estado` VALUES ('481', 'Michigan', 'MI', '721');
INSERT INTO `estado` VALUES ('491', 'Minnesota', 'MN', '721');
INSERT INTO `estado` VALUES ('501', 'Missouri', 'MO', '721');
INSERT INTO `estado` VALUES ('511', 'Mississippi', 'MS', '721');
INSERT INTO `estado` VALUES ('521', 'Montana', 'MT', '721');
INSERT INTO `estado` VALUES ('531', 'Carolina do Norte', 'NC', '721');
INSERT INTO `estado` VALUES ('541', 'Dakota do Norte', 'ND', '721');
INSERT INTO `estado` VALUES ('551', 'Nebraska', 'NE', '721');
INSERT INTO `estado` VALUES ('561', 'Nova Hampshire', 'NH', '721');
INSERT INTO `estado` VALUES ('571', 'Nova Jérsei', 'NJ', '721');
INSERT INTO `estado` VALUES ('581', 'Novo México', 'NM', '721');
INSERT INTO `estado` VALUES ('591', 'Nevada', 'NV', '721');
INSERT INTO `estado` VALUES ('601', 'Nova Iorque', 'NY', '721');
INSERT INTO `estado` VALUES ('611', 'Ohio', 'OH', '721');
INSERT INTO `estado` VALUES ('621', 'Oklahoma', 'OK', '721');
INSERT INTO `estado` VALUES ('631', 'Oregon', 'OR', '721');
INSERT INTO `estado` VALUES ('641', 'Pensilvânia', 'PA', '721');
INSERT INTO `estado` VALUES ('651', 'RhodeIsland', 'RI', '721');
INSERT INTO `estado` VALUES ('661', 'Carolina do Sul', 'SC', '721');
INSERT INTO `estado` VALUES ('671', 'Dakota do Sul', 'SD', '721');
INSERT INTO `estado` VALUES ('681', 'Tennessee', 'TN', '721');
INSERT INTO `estado` VALUES ('691', 'Texas', 'TX', '721');
INSERT INTO `estado` VALUES ('701', 'Utah', 'UT', '721');
INSERT INTO `estado` VALUES ('711', 'Vermont', 'VT', '721');
INSERT INTO `estado` VALUES ('721', 'Virgínia', 'VA', '721');
INSERT INTO `estado` VALUES ('731', 'Washington', 'WA', '721');
INSERT INTO `estado` VALUES ('741', 'Wisconsin', 'WI', '721');
INSERT INTO `estado` VALUES ('751', 'Virgínia Ocidental', 'WV', '721');
INSERT INTO `estado` VALUES ('761', 'Wyoming', 'WY', '721');

-- ----------------------------
-- Table structure for filme
-- ----------------------------
DROP TABLE IF EXISTS `filme`;
CREATE TABLE `filme` (
  `cd_filme` int(11) NOT NULL AUTO_INCREMENT,
  `nm_filme` varchar(100) NOT NULL,
  `ds_sinopse` mediumtext,
  `im_poster` blob,
  `nu_classificacao` decimal(3,0) DEFAULT NULL,
  `nu_ano_lancamento` decimal(4,0) NOT NULL,
  `cd_tipo_filme` tinyint(4) NOT NULL,
  PRIMARY KEY (`cd_filme`),
  KEY `fk_filme_tipo_filme` (`cd_tipo_filme`),
  CONSTRAINT `fk_filme_tipo_filme` FOREIGN KEY (`cd_tipo_filme`) REFERENCES `tipo_filme` (`cd_tipo_filme`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of filme
-- ----------------------------
INSERT INTO `filme` VALUES ('11', 'Um Sonho de Liberdade', null, null, null, '1994', '1');
INSERT INTO `filme` VALUES ('12', 'O Poderoso Chefão', null, null, null, '1972', '1');
INSERT INTO `filme` VALUES ('13', 'O Poderoso Chefão II', null, null, null, '1974', '1');
INSERT INTO `filme` VALUES ('14', 'Batman: O Cavaleiro das Trevas', null, null, null, '2008', '1');
INSERT INTO `filme` VALUES ('15', 'A Lista de Schindler', null, null, null, '1993', '1');
INSERT INTO `filme` VALUES ('16', 'Homens e uma Sentença', null, null, null, '1957', '1');
INSERT INTO `filme` VALUES ('17', 'Pulp Fiction: Tempo de Violência', null, null, null, '1994', '1');
INSERT INTO `filme` VALUES ('18', 'O Senhor dos Anéis: O Retorno do Rei', null, null, null, '2003', '1');
INSERT INTO `filme` VALUES ('19', 'Três Homens em Conflito', null, null, null, '1966', '1');
INSERT INTO `filme` VALUES ('20', 'Clube da Luta', null, null, null, '1999', '1');
INSERT INTO `filme` VALUES ('21', 'O Senhor dos Anéis: A Sociedade do Anel', null, null, null, '2001', '1');
INSERT INTO `filme` VALUES ('22', 'O Império Contra-Ataca', null, null, null, '1980', '1');
INSERT INTO `filme` VALUES ('23', 'Forrest Gump: O Contador de Histórias', null, null, null, '1994', '1');
INSERT INTO `filme` VALUES ('24', 'A Origem', null, null, null, '2010', '1');
INSERT INTO `filme` VALUES ('25', 'O Senhor dos Anéis: As Duas Torres', null, null, null, '2002', '1');
INSERT INTO `filme` VALUES ('26', 'Um Estranho no Ninho', null, null, null, '1975', '1');
INSERT INTO `filme` VALUES ('27', 'Os Bons Companheiros', null, null, null, '1990', '1');
INSERT INTO `filme` VALUES ('28', 'Matrix', null, null, null, '1999', '1');
INSERT INTO `filme` VALUES ('29', 'Os Sete Samurais', null, null, null, '1954', '1');
INSERT INTO `filme` VALUES ('30', 'Guerra nas Estrelas', null, null, null, '1977', '1');
INSERT INTO `filme` VALUES ('31', 'Cidade de Deus', null, null, null, '2002', '1');
INSERT INTO `filme` VALUES ('32', 'Seven: Os Sete Crimes Capitais', null, null, null, '1995', '1');
INSERT INTO `filme` VALUES ('33', 'O Silêncio dos Inocentes', null, null, null, '1991', '1');
INSERT INTO `filme` VALUES ('34', 'A Felicidade Não Se Compra', null, null, null, '1946', '1');
INSERT INTO `filme` VALUES ('35', 'Os Suspeitos', null, null, null, '1995', '1');
INSERT INTO `filme` VALUES ('36', 'A Vida é Bela', null, null, null, '1997', '1');
INSERT INTO `filme` VALUES ('37', 'O Profissional', null, null, null, '1994', '1');
INSERT INTO `filme` VALUES ('38', 'A Viagem de Chihiro', null, null, null, '2001', '1');
INSERT INTO `filme` VALUES ('39', 'Era uma Vez no Oeste', null, null, null, '1968', '1');
INSERT INTO `filme` VALUES ('40', 'O Resgate do Soldado Ryan', null, null, null, '1998', '1');

-- ----------------------------
-- Table structure for filme_genero
-- ----------------------------
DROP TABLE IF EXISTS `filme_genero`;
CREATE TABLE `filme_genero` (
  `cd_genero` tinyint(4) NOT NULL,
  `cd_filme` int(11) NOT NULL,
  KEY `FK_ASS_64` (`cd_genero`),
  KEY `FK_ASS_65` (`cd_filme`),
  CONSTRAINT `FK_ASS_64` FOREIGN KEY (`cd_genero`) REFERENCES `genero` (`cd_genero`),
  CONSTRAINT `FK_ASS_65` FOREIGN KEY (`cd_filme`) REFERENCES `filme` (`cd_filme`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of filme_genero
-- ----------------------------

-- ----------------------------
-- Table structure for filme_profissional
-- ----------------------------
DROP TABLE IF EXISTS `filme_profissional`;
CREATE TABLE `filme_profissional` (
  `cd_filme_profissional` int(11) NOT NULL AUTO_INCREMENT,
  `cd_profissional` int(11) NOT NULL,
  `cd_filme` int(11) NOT NULL,
  `cd_funcao` tinyint(4) NOT NULL,
  PRIMARY KEY (`cd_filme_profissional`),
  KEY `fk_filme_profissional_filme` (`cd_filme`),
  KEY `fk_filme_profissional_funcao` (`cd_funcao`),
  KEY `fk_filme_profissional_prof` (`cd_profissional`),
  CONSTRAINT `fk_filme_profissional_filme` FOREIGN KEY (`cd_filme`) REFERENCES `filme` (`cd_filme`),
  CONSTRAINT `fk_filme_profissional_funcao` FOREIGN KEY (`cd_funcao`) REFERENCES `funcao` (`cd_funcao`),
  CONSTRAINT `fk_filme_profissional_prof` FOREIGN KEY (`cd_profissional`) REFERENCES `profissional` (`cd_profissional`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of filme_profissional
-- ----------------------------

-- ----------------------------
-- Table structure for funcao
-- ----------------------------
DROP TABLE IF EXISTS `funcao`;
CREATE TABLE `funcao` (
  `cd_funcao` tinyint(4) NOT NULL AUTO_INCREMENT,
  `nm_funcao` varchar(30) NOT NULL,
  PRIMARY KEY (`cd_funcao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of funcao
-- ----------------------------

-- ----------------------------
-- Table structure for funcionario
-- ----------------------------
DROP TABLE IF EXISTS `funcionario`;
CREATE TABLE `funcionario` (
  `cd_funcionario` int(11) NOT NULL AUTO_INCREMENT,
  `nm_funcionario` varchar(40) NOT NULL,
  `nu_rg_funcionario` char(11) NOT NULL,
  `nu_cpf_funcionario` char(15) NOT NULL,
  `cd_cargo` tinyint(4) NOT NULL,
  `vl_salario` decimal(9,2) NOT NULL,
  `vl_comissao` decimal(9,2) DEFAULT NULL,
  `dt_admissao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dt_demissao` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cd_gerente` int(11) NOT NULL,
  PRIMARY KEY (`cd_funcionario`),
  KEY `fk_funcionario_cargo` (`cd_cargo`),
  KEY `fk_funcionario_funcionario` (`cd_gerente`),
  CONSTRAINT `fk_funcionario_cargo` FOREIGN KEY (`cd_cargo`) REFERENCES `cargo` (`cd_cargo`),
  CONSTRAINT `fk_funcionario_funcionario` FOREIGN KEY (`cd_gerente`) REFERENCES `funcionario` (`cd_funcionario`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of funcionario
-- ----------------------------
INSERT INTO `funcionario` VALUES ('1', 'Fernanda Lopez', '341699524', '656898784', '2', '2150.00', '1000.00', '2000-08-09 00:00:00', '2017-04-11 00:00:00', '1');
INSERT INTO `funcionario` VALUES ('2', 'Fernando Sousa', '130630287', '02581629100', '1', '2000.00', '2000.00', '2016-09-01 00:00:00', '2010-01-01 00:00:00', '1');
INSERT INTO `funcionario` VALUES ('3', 'Thais Santos', '227987639', '59718563245', '1', '2000.00', '2000.00', '2013-09-09 00:00:00', '2010-01-01 00:00:00', '1');
INSERT INTO `funcionario` VALUES ('4', 'Carlos Abrãao', '139797464', '88515734842', '3', '3000.00', '2000.00', '2016-09-01 00:00:00', '2017-03-07 23:22:53', '1');
INSERT INTO `funcionario` VALUES ('5', 'Emanuel Alves', '392562637', '13226778919', '3', '2000.00', '2000.00', '2016-09-01 00:00:00', '2017-03-07 23:22:53', '1');
INSERT INTO `funcionario` VALUES ('6', 'Elenilda Silva', '326105888', '11050547217', '1', '2000.00', '2000.00', '2016-09-01 00:00:00', '2017-03-07 23:22:54', '1');
INSERT INTO `funcionario` VALUES ('7', 'Eliton Santos', '381022766', '63639171829', '1', '2000.00', '2000.00', '2016-09-01 00:00:00', '2017-03-07 23:22:54', '1');
INSERT INTO `funcionario` VALUES ('8', 'Gabriel Montez', '502409253', '45770288248', '3', '4000.00', '2000.00', '2016-09-01 00:00:00', '2017-03-07 23:22:54', '1');
INSERT INTO `funcionario` VALUES ('9', 'Andrew Campbell', '343642803', '24997189278', '1', '2000.00', '2000.00', '2016-09-01 00:00:00', '2017-03-07 23:22:54', '1');
INSERT INTO `funcionario` VALUES ('10', 'Aria Montgomery', '357726327', '52180567235', '1', '2000.00', '2000.00', '2016-09-01 00:00:00', '2017-03-07 23:22:54', '1');
INSERT INTO `funcionario` VALUES ('11', 'Charlie Dilaurentis', '182872373', '22153070724', '1', '2000.00', '2000.00', '2016-09-01 00:00:00', '2017-03-07 23:22:54', '1');
INSERT INTO `funcionario` VALUES ('12', 'Mona Vanderwaal', '412968356', '54116299855', '3', '4000.00', '2000.00', '2016-09-01 00:00:00', '2017-03-07 23:22:55', '1');
INSERT INTO `funcionario` VALUES ('13', 'Scott Sullivan', '336553183', '71450655505', '3', '4000.00', '2000.00', '2016-09-01 00:00:00', '2017-03-07 23:22:55', '1');
INSERT INTO `funcionario` VALUES ('14', 'Spencer Hastings', '157294936', '21033859508', '3', '2000.00', '2000.00', '2016-09-01 00:00:00', '2017-03-07 23:22:55', '1');
INSERT INTO `funcionario` VALUES ('15', 'Lucas Gabriel', '429412745', '65800689733', '3', '4000.00', '2000.00', '2016-09-01 00:00:00', '2017-03-07 23:22:55', '1');
INSERT INTO `funcionario` VALUES ('16', 'Andrea Lira', '190686133', '98141650939', '3', '4000.00', '2000.00', '2016-09-01 00:00:00', '2017-03-07 23:22:55', '1');
INSERT INTO `funcionario` VALUES ('17', 'Gabriel Correa', '403440853', '98141650939', '3', '4000.00', '2000.00', '2016-09-01 00:00:00', '2017-03-07 23:22:56', '1');
INSERT INTO `funcionario` VALUES ('18', 'Antonia Cardoso', '370208766', '98546166730', '1', '2000.00', '2000.00', '2016-09-01 00:00:00', '2017-03-07 23:22:56', '1');
INSERT INTO `funcionario` VALUES ('19', 'Anderson Lopez', '343277013', '47967842928', '1', '2000.00', '2000.00', '2016-09-01 00:00:00', '2017-03-07 23:22:56', '1');
INSERT INTO `funcionario` VALUES ('20', 'Adriana Santos', '388541076', '88730855551', '1', '2000.00', '2000.00', '2016-09-01 00:00:00', '2017-03-07 23:22:56', '1');
INSERT INTO `funcionario` VALUES ('21', 'Henrique Sousa', '388541076', '53463713543', '3', '4000.00', '2000.00', '2016-09-01 00:00:00', '2017-03-07 23:22:56', '1');
INSERT INTO `funcionario` VALUES ('22', 'Carlos Borges', '2977269', '77173706971', '3', '4000.00', '2000.00', '2016-09-01 00:00:00', '2017-03-07 23:22:56', '1');
INSERT INTO `funcionario` VALUES ('23', 'Hanna Marin', '429434121', '04857795108', '3', '4000.00', '2000.00', '2016-09-01 00:00:00', '2017-03-07 23:22:57', '1');
INSERT INTO `funcionario` VALUES ('24', 'Jason Dilaurentis', '487587888', '28754964687', '1', '2000.00', '2000.00', '2016-09-01 00:00:00', '2017-03-07 23:22:57', '1');
INSERT INTO `funcionario` VALUES ('25', 'Emily Fields', '69987564', '36598875482', '1', '2000.00', '2000.00', '2016-09-01 00:00:00', '2017-03-07 23:22:57', '1');
INSERT INTO `funcionario` VALUES ('26', 'Fernando Santos', '32655487', '39222025350', '3', '4000.00', '2000.00', '2016-09-01 00:00:00', '2017-03-07 23:22:57', '1');
INSERT INTO `funcionario` VALUES ('27', 'Stiles Stilinski', '6598758528', '91121294960', '1', '2000.00', '2000.00', '2016-09-01 00:00:00', '2017-03-07 23:22:57', '1');
INSERT INTO `funcionario` VALUES ('28', 'Ashley Tisdale', '458789965', '98492374144', '3', '4000.00', '2000.00', '2016-09-01 00:00:00', '2017-03-07 23:22:57', '1');
INSERT INTO `funcionario` VALUES ('29', 'Zac Efrom', '457489558', '05205858362', '3', '2000.00', '2000.00', '2016-09-01 00:00:00', '2017-03-07 23:22:58', '1');
INSERT INTO `funcionario` VALUES ('30', 'Demi Lovato', '78955645', '59762035313', '1', '2000.00', '2000.00', '2016-09-01 00:00:00', '2017-03-07 23:22:58', '1');

-- ----------------------------
-- Table structure for genero
-- ----------------------------
DROP TABLE IF EXISTS `genero`;
CREATE TABLE `genero` (
  `cd_genero` tinyint(4) NOT NULL AUTO_INCREMENT,
  `nm_genero` varchar(50) NOT NULL,
  PRIMARY KEY (`cd_genero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of genero
-- ----------------------------

-- ----------------------------
-- Table structure for grupo_complexo
-- ----------------------------
DROP TABLE IF EXISTS `grupo_complexo`;
CREATE TABLE `grupo_complexo` (
  `cd_grupo_complexo` tinyint(4) NOT NULL AUTO_INCREMENT,
  `nm_grupo_complexo` varchar(30) NOT NULL,
  `cd_tipo_complexo` tinyint(4) NOT NULL,
  PRIMARY KEY (`cd_grupo_complexo`),
  KEY `fk_grupo_compl_tipo_compl` (`cd_tipo_complexo`),
  CONSTRAINT `fk_grupo_compl_tipo_compl` FOREIGN KEY (`cd_tipo_complexo`) REFERENCES `tipo_complexo` (`cd_tipo_complexo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of grupo_complexo
-- ----------------------------

-- ----------------------------
-- Table structure for ingresso
-- ----------------------------
DROP TABLE IF EXISTS `ingresso`;
CREATE TABLE `ingresso` (
  `cd_ingresso` bigint(20) NOT NULL AUTO_INCREMENT,
  `dt_emissao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cd_numero_assento` decimal(2,0) NOT NULL,
  `cd_letra_assento` char(1) NOT NULL,
  `cd_sessao` int(11) NOT NULL,
  `cd_venda` int(11) NOT NULL,
  `vl_ingresso` decimal(6,2) NOT NULL,
  PRIMARY KEY (`cd_ingresso`),
  KEY `fk_ingresso_sessao` (`cd_sessao`),
  KEY `fk_venda_ingresso` (`cd_venda`),
  CONSTRAINT `fk_ingresso_sessao` FOREIGN KEY (`cd_sessao`) REFERENCES `sessao` (`cd_sessao`),
  CONSTRAINT `fk_venda_ingresso` FOREIGN KEY (`cd_venda`) REFERENCES `venda` (`cd_venda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ingresso
-- ----------------------------

-- ----------------------------
-- Table structure for pagamento
-- ----------------------------
DROP TABLE IF EXISTS `pagamento`;
CREATE TABLE `pagamento` (
  `cd_pagamento` int(11) NOT NULL AUTO_INCREMENT,
  `cd_venda` int(11) DEFAULT NULL,
  `tp_pagamento` enum('Dinheiro','Cheque','Cartão de Débito','Cartão de Crédito','Cortesia') NOT NULL,
  `dt_pagamento` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `vl_pagamento` decimal(7,2) NOT NULL,
  PRIMARY KEY (`cd_pagamento`),
  KEY `fk_pagamento_venda` (`cd_venda`),
  CONSTRAINT `fk_pagamento_venda` FOREIGN KEY (`cd_venda`) REFERENCES `venda` (`cd_venda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pagamento
-- ----------------------------

-- ----------------------------
-- Table structure for pais
-- ----------------------------
DROP TABLE IF EXISTS `pais`;
CREATE TABLE `pais` (
  `cd_pais` smallint(6) NOT NULL AUTO_INCREMENT,
  `nm_pais` varchar(100) NOT NULL,
  PRIMARY KEY (`cd_pais`)
) ENGINE=InnoDB AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pais
-- ----------------------------
INSERT INTO `pais` VALUES ('1', 'Brasil');
INSERT INTO `pais` VALUES ('11', 'África do Sul');
INSERT INTO `pais` VALUES ('21', 'Akrotiri');
INSERT INTO `pais` VALUES ('31', 'Albânia');
INSERT INTO `pais` VALUES ('41', 'Alemanha');
INSERT INTO `pais` VALUES ('51', 'Andorra');
INSERT INTO `pais` VALUES ('61', 'Angola');
INSERT INTO `pais` VALUES ('71', 'Anguila');
INSERT INTO `pais` VALUES ('81', 'Antárctida');
INSERT INTO `pais` VALUES ('91', 'Antígua e Barbuda');
INSERT INTO `pais` VALUES ('101', 'Antilhas Neerlandesas');
INSERT INTO `pais` VALUES ('111', 'Arábia Saudita');
INSERT INTO `pais` VALUES ('121', 'Arctic Ocean');
INSERT INTO `pais` VALUES ('131', 'Argélia');
INSERT INTO `pais` VALUES ('141', 'Argentina');
INSERT INTO `pais` VALUES ('151', 'Arménia');
INSERT INTO `pais` VALUES ('161', 'Aruba');
INSERT INTO `pais` VALUES ('171', 'Ashmore and Cartier Islands');
INSERT INTO `pais` VALUES ('181', 'Atlantic Ocean');
INSERT INTO `pais` VALUES ('191', 'Austrália');
INSERT INTO `pais` VALUES ('201', 'Áustria');
INSERT INTO `pais` VALUES ('211', 'Azerbaijão');
INSERT INTO `pais` VALUES ('221', 'Baamas');
INSERT INTO `pais` VALUES ('231', 'Bangladeche');
INSERT INTO `pais` VALUES ('241', 'Barbados');
INSERT INTO `pais` VALUES ('251', 'Barém');
INSERT INTO `pais` VALUES ('261', 'Bélgica');
INSERT INTO `pais` VALUES ('271', 'Belize');
INSERT INTO `pais` VALUES ('281', 'Benim');
INSERT INTO `pais` VALUES ('291', 'Bermudas');
INSERT INTO `pais` VALUES ('301', 'Bielorrússia');
INSERT INTO `pais` VALUES ('311', 'Birmânia');
INSERT INTO `pais` VALUES ('321', 'Bolívia');
INSERT INTO `pais` VALUES ('331', 'Bósnia e Herzegovina');
INSERT INTO `pais` VALUES ('341', 'Botsuana');
INSERT INTO `pais` VALUES ('351', 'Brunei');
INSERT INTO `pais` VALUES ('361', 'Bulgária');
INSERT INTO `pais` VALUES ('371', 'Burquina Faso');
INSERT INTO `pais` VALUES ('381', 'Burúndi');
INSERT INTO `pais` VALUES ('391', 'Butão');
INSERT INTO `pais` VALUES ('401', 'Cabo Verde');
INSERT INTO `pais` VALUES ('411', 'Camarões');
INSERT INTO `pais` VALUES ('421', 'Camboja');
INSERT INTO `pais` VALUES ('431', 'Canadá');
INSERT INTO `pais` VALUES ('441', 'Catar');
INSERT INTO `pais` VALUES ('451', 'Cazaquistão');
INSERT INTO `pais` VALUES ('461', 'Chade');
INSERT INTO `pais` VALUES ('471', 'Chile');
INSERT INTO `pais` VALUES ('481', 'China');
INSERT INTO `pais` VALUES ('491', 'Chipre');
INSERT INTO `pais` VALUES ('501', 'Clipperton Island');
INSERT INTO `pais` VALUES ('511', 'Colômbia');
INSERT INTO `pais` VALUES ('521', 'Comores');
INSERT INTO `pais` VALUES ('531', 'Congo-Brazzaville');
INSERT INTO `pais` VALUES ('541', 'Congo-Kinshasa');
INSERT INTO `pais` VALUES ('551', 'Coral Sea Islands');
INSERT INTO `pais` VALUES ('561', 'Coreia do Norte');
INSERT INTO `pais` VALUES ('571', 'Coreia do Sul');
INSERT INTO `pais` VALUES ('581', 'Costa do Marfim');
INSERT INTO `pais` VALUES ('591', 'Costa Rica');
INSERT INTO `pais` VALUES ('601', 'Croácia');
INSERT INTO `pais` VALUES ('611', 'Cuba');
INSERT INTO `pais` VALUES ('621', 'Dhekelia');
INSERT INTO `pais` VALUES ('631', 'Dinamarca');
INSERT INTO `pais` VALUES ('641', 'Domínica');
INSERT INTO `pais` VALUES ('651', 'Egipto');
INSERT INTO `pais` VALUES ('661', 'Emiratos Árabes Unidos');
INSERT INTO `pais` VALUES ('671', 'Equador');
INSERT INTO `pais` VALUES ('681', 'Eritreia');
INSERT INTO `pais` VALUES ('691', 'Eslováquia');
INSERT INTO `pais` VALUES ('701', 'Eslovénia');
INSERT INTO `pais` VALUES ('711', 'Espanha');
INSERT INTO `pais` VALUES ('721', 'Estados Unidos');
INSERT INTO `pais` VALUES ('731', 'Estónia');
INSERT INTO `pais` VALUES ('741', 'Etiópia');
INSERT INTO `pais` VALUES ('751', 'Faroé');
INSERT INTO `pais` VALUES ('761', 'Fiji');
INSERT INTO `pais` VALUES ('771', 'Filipinas');
INSERT INTO `pais` VALUES ('781', 'Finlândia');
INSERT INTO `pais` VALUES ('791', 'França');
INSERT INTO `pais` VALUES ('801', 'Gabão');
INSERT INTO `pais` VALUES ('811', 'Gâmbia');
INSERT INTO `pais` VALUES ('821', 'Gana');
INSERT INTO `pais` VALUES ('831', 'Gaza Strip');
INSERT INTO `pais` VALUES ('841', 'Geórgia');
INSERT INTO `pais` VALUES ('851', 'Geórgia do Sul e Sandwich do Sul');
INSERT INTO `pais` VALUES ('861', 'Gibraltar');
INSERT INTO `pais` VALUES ('871', 'Granada');
INSERT INTO `pais` VALUES ('881', 'Grécia');
INSERT INTO `pais` VALUES ('891', 'Gronelândia');
INSERT INTO `pais` VALUES ('901', 'Guame');
INSERT INTO `pais` VALUES ('911', 'Guatemala');
INSERT INTO `pais` VALUES ('921', 'Guernsey');
INSERT INTO `pais` VALUES ('931', 'Guiana');
INSERT INTO `pais` VALUES ('941', 'Guiné');
INSERT INTO `pais` VALUES ('951', 'Guiné Equatorial');
INSERT INTO `pais` VALUES ('961', 'Guiné-Bissau');
INSERT INTO `pais` VALUES ('971', 'Haiti');
INSERT INTO `pais` VALUES ('981', 'Honduras');
INSERT INTO `pais` VALUES ('991', 'Hong Kong');
INSERT INTO `pais` VALUES ('1001', 'Hungria');
INSERT INTO `pais` VALUES ('1011', 'Iémen');
INSERT INTO `pais` VALUES ('1021', 'Ilha Bouvet');
INSERT INTO `pais` VALUES ('1031', 'Ilha do Natal');
INSERT INTO `pais` VALUES ('1041', 'Ilha Norfolk');
INSERT INTO `pais` VALUES ('1051', 'Ilhas Caimão');
INSERT INTO `pais` VALUES ('1061', 'Ilhas Cook');
INSERT INTO `pais` VALUES ('1071', 'Ilhas dos Cocos');
INSERT INTO `pais` VALUES ('1081', 'Ilhas Falkland');
INSERT INTO `pais` VALUES ('1091', 'Ilhas Heard e McDonald');
INSERT INTO `pais` VALUES ('1101', 'Ilhas Marshall');
INSERT INTO `pais` VALUES ('1111', 'Ilhas Salomão');
INSERT INTO `pais` VALUES ('1121', 'Ilhas Turcas e Caicos');
INSERT INTO `pais` VALUES ('1131', 'Ilhas Virgens Americanas');
INSERT INTO `pais` VALUES ('1141', 'Ilhas Virgens Britânicas');
INSERT INTO `pais` VALUES ('1151', 'Índia');
INSERT INTO `pais` VALUES ('1161', 'Indian Ocean');
INSERT INTO `pais` VALUES ('1171', 'Indonésia');
INSERT INTO `pais` VALUES ('1181', 'Irão');
INSERT INTO `pais` VALUES ('1191', 'Iraque');
INSERT INTO `pais` VALUES ('1201', 'Irlanda');
INSERT INTO `pais` VALUES ('1211', 'Islândia');
INSERT INTO `pais` VALUES ('1221', 'Israel');
INSERT INTO `pais` VALUES ('1231', 'Itália');
INSERT INTO `pais` VALUES ('1241', 'Jamaica');
INSERT INTO `pais` VALUES ('1251', 'Jan Mayen');
INSERT INTO `pais` VALUES ('1261', 'Japão');
INSERT INTO `pais` VALUES ('1271', 'Jersey');
INSERT INTO `pais` VALUES ('1281', 'Jibuti');
INSERT INTO `pais` VALUES ('1291', 'Jordânia');
INSERT INTO `pais` VALUES ('1301', 'Kuwait');
INSERT INTO `pais` VALUES ('1311', 'Laos');
INSERT INTO `pais` VALUES ('1321', 'Lesoto');
INSERT INTO `pais` VALUES ('1331', 'Letónia');
INSERT INTO `pais` VALUES ('1341', 'Líbano');
INSERT INTO `pais` VALUES ('1351', 'Libéria');
INSERT INTO `pais` VALUES ('1361', 'Líbia');
INSERT INTO `pais` VALUES ('1371', 'Listenstaine');
INSERT INTO `pais` VALUES ('1381', 'Lituânia');
INSERT INTO `pais` VALUES ('1391', 'Luxemburgo');
INSERT INTO `pais` VALUES ('1401', 'Macau');
INSERT INTO `pais` VALUES ('1411', 'Macedónia');
INSERT INTO `pais` VALUES ('1421', 'Madagáscar');
INSERT INTO `pais` VALUES ('1431', 'Malásia');
INSERT INTO `pais` VALUES ('1441', 'Malávi');
INSERT INTO `pais` VALUES ('1451', 'Maldivas');
INSERT INTO `pais` VALUES ('1461', 'Mali');
INSERT INTO `pais` VALUES ('1471', 'Malta');
INSERT INTO `pais` VALUES ('1481', 'Man, Isle of');
INSERT INTO `pais` VALUES ('1491', 'Marianas do Norte');
INSERT INTO `pais` VALUES ('1501', 'Marrocos');
INSERT INTO `pais` VALUES ('1511', 'Maurícia');
INSERT INTO `pais` VALUES ('1521', 'Mauritânia');
INSERT INTO `pais` VALUES ('1531', 'Mayotte');
INSERT INTO `pais` VALUES ('1541', 'México');
INSERT INTO `pais` VALUES ('1551', 'Micronésia');
INSERT INTO `pais` VALUES ('1561', 'Moçambique');
INSERT INTO `pais` VALUES ('1571', 'Moldávia');
INSERT INTO `pais` VALUES ('1581', 'Mónaco');
INSERT INTO `pais` VALUES ('1591', 'Mongólia');
INSERT INTO `pais` VALUES ('1601', 'Monserrate');
INSERT INTO `pais` VALUES ('1611', 'Montenegro');
INSERT INTO `pais` VALUES ('1621', 'Mundo');
INSERT INTO `pais` VALUES ('1631', 'Namíbia');
INSERT INTO `pais` VALUES ('1641', 'Nauru');
INSERT INTO `pais` VALUES ('1651', 'Navassa Island');
INSERT INTO `pais` VALUES ('1661', 'Nepal');
INSERT INTO `pais` VALUES ('1671', 'Nicarágua');
INSERT INTO `pais` VALUES ('1681', 'Níger');
INSERT INTO `pais` VALUES ('1691', 'Nigéria');
INSERT INTO `pais` VALUES ('1701', 'Niue');
INSERT INTO `pais` VALUES ('1711', 'Noruega');
INSERT INTO `pais` VALUES ('1721', 'Nova Caledónia');
INSERT INTO `pais` VALUES ('1731', 'Nova Zelândia');
INSERT INTO `pais` VALUES ('1741', 'Omã');
INSERT INTO `pais` VALUES ('1751', 'Pacific Ocean');
INSERT INTO `pais` VALUES ('1761', 'Países Baixos');
INSERT INTO `pais` VALUES ('1771', 'Palau');
INSERT INTO `pais` VALUES ('1781', 'Panamá');
INSERT INTO `pais` VALUES ('1791', 'Papua-Nova Guiné');
INSERT INTO `pais` VALUES ('1801', 'Paquistão');
INSERT INTO `pais` VALUES ('1811', 'Paracel Islands');
INSERT INTO `pais` VALUES ('1821', 'Paraguai');
INSERT INTO `pais` VALUES ('1831', 'Peru');
INSERT INTO `pais` VALUES ('1841', 'Pitcairn');
INSERT INTO `pais` VALUES ('1851', 'Polinésia Francesa');
INSERT INTO `pais` VALUES ('1861', 'Polónia');
INSERT INTO `pais` VALUES ('1871', 'Porto Rico');
INSERT INTO `pais` VALUES ('1881', 'Portugal');
INSERT INTO `pais` VALUES ('1891', 'Quénia');
INSERT INTO `pais` VALUES ('1901', 'Quirguizistão');
INSERT INTO `pais` VALUES ('1911', 'Quiribáti');
INSERT INTO `pais` VALUES ('1921', 'Reino Unido');
INSERT INTO `pais` VALUES ('1931', 'República Centro-Africana');
INSERT INTO `pais` VALUES ('1941', 'República Checa');
INSERT INTO `pais` VALUES ('1951', 'República Dominicana');
INSERT INTO `pais` VALUES ('1961', 'Roménia');
INSERT INTO `pais` VALUES ('1971', 'Ruanda');
INSERT INTO `pais` VALUES ('1981', 'Rússia');
INSERT INTO `pais` VALUES ('1991', 'Salvador');
INSERT INTO `pais` VALUES ('2001', 'Samoa');
INSERT INTO `pais` VALUES ('2011', 'Samoa Americana');
INSERT INTO `pais` VALUES ('2021', 'Santa Helena');
INSERT INTO `pais` VALUES ('2031', 'Santa Lúcia');
INSERT INTO `pais` VALUES ('2041', 'São Cristóvão e Neves');
INSERT INTO `pais` VALUES ('2051', 'São Marinho');
INSERT INTO `pais` VALUES ('2061', 'São Pedro e Miquelon');
INSERT INTO `pais` VALUES ('2071', 'São Tomé e Príncipe');
INSERT INTO `pais` VALUES ('2081', 'São Vicente e Granadinas');
INSERT INTO `pais` VALUES ('2091', 'Sara Ocidental');
INSERT INTO `pais` VALUES ('2101', 'Seicheles');
INSERT INTO `pais` VALUES ('2111', 'Senegal');
INSERT INTO `pais` VALUES ('2121', 'Serra Leoa');
INSERT INTO `pais` VALUES ('2131', 'Sérvia');
INSERT INTO `pais` VALUES ('2141', 'Singapura');
INSERT INTO `pais` VALUES ('2151', 'Síria');
INSERT INTO `pais` VALUES ('2161', 'Somália');
INSERT INTO `pais` VALUES ('2171', 'Southern Ocean');
INSERT INTO `pais` VALUES ('2181', 'Spratly Islands');
INSERT INTO `pais` VALUES ('2191', 'Sri Lanca');
INSERT INTO `pais` VALUES ('2201', 'Suazilândia');
INSERT INTO `pais` VALUES ('2211', 'Sudão');
INSERT INTO `pais` VALUES ('2221', 'Suécia');
INSERT INTO `pais` VALUES ('2231', 'Suíça');
INSERT INTO `pais` VALUES ('2241', 'Suriname');
INSERT INTO `pais` VALUES ('2251', 'Svalbard e Jan Mayen');
INSERT INTO `pais` VALUES ('2261', 'Tailândia');
INSERT INTO `pais` VALUES ('2271', 'Taiwan');
INSERT INTO `pais` VALUES ('2281', 'Tajiquistão');
INSERT INTO `pais` VALUES ('2291', 'Tanzânia');
INSERT INTO `pais` VALUES ('2301', 'Território Britânico do Oceano Índico');
INSERT INTO `pais` VALUES ('2311', 'Territórios Austrais Franceses');
INSERT INTO `pais` VALUES ('2321', 'Timor Leste');
INSERT INTO `pais` VALUES ('2331', 'Togo');
INSERT INTO `pais` VALUES ('2341', 'Tokelau');
INSERT INTO `pais` VALUES ('2351', 'Tonga');
INSERT INTO `pais` VALUES ('2361', 'Trindade e Tobago');
INSERT INTO `pais` VALUES ('2371', 'Tunísia');
INSERT INTO `pais` VALUES ('2381', 'Turquemenistão');
INSERT INTO `pais` VALUES ('2391', 'Turquia');
INSERT INTO `pais` VALUES ('2401', 'Tuvalu');
INSERT INTO `pais` VALUES ('2411', 'Ucrânia');
INSERT INTO `pais` VALUES ('2421', 'Uganda');
INSERT INTO `pais` VALUES ('2431', 'União Europeia');
INSERT INTO `pais` VALUES ('2441', 'Uruguai');
INSERT INTO `pais` VALUES ('2451', 'Usbequistão');
INSERT INTO `pais` VALUES ('2461', 'Vanuatu');
INSERT INTO `pais` VALUES ('2471', 'Vaticano');
INSERT INTO `pais` VALUES ('2481', 'Venezuela');
INSERT INTO `pais` VALUES ('2491', 'Vietname');
INSERT INTO `pais` VALUES ('2501', 'Wake Island');
INSERT INTO `pais` VALUES ('2511', 'Wallis e Futuna');
INSERT INTO `pais` VALUES ('2521', 'West Bank');
INSERT INTO `pais` VALUES ('2531', 'Zâmbia');
INSERT INTO `pais` VALUES ('2541', 'Zimbabué ');
INSERT INTO `pais` VALUES ('9999', 'ARENDELL');

-- ----------------------------
-- Table structure for produto
-- ----------------------------
DROP TABLE IF EXISTS `produto`;
CREATE TABLE `produto` (
  `cd_produto` mediumint(9) NOT NULL AUTO_INCREMENT,
  `nm_produto` varchar(100) NOT NULL,
  `vl_produto` decimal(6,2) NOT NULL,
  `cd_categoria` tinyint(4) NOT NULL,
  PRIMARY KEY (`cd_produto`),
  KEY `fk_produto_categoria` (`cd_categoria`),
  CONSTRAINT `fk_produto_categoria` FOREIGN KEY (`cd_categoria`) REFERENCES `categoria` (`cd_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of produto
-- ----------------------------
INSERT INTO `produto` VALUES ('11', 'Pepsi 350 ml', '8.00', '1');
INSERT INTO `produto` VALUES ('12', 'Hot Dog', '12.00', '2');
INSERT INTO `produto` VALUES ('13', 'Pipoca Pequena', '10.00', '2');
INSERT INTO `produto` VALUES ('14', 'Pipoca Média', '12.00', '2');
INSERT INTO `produto` VALUES ('15', 'Pipoca Grande', '16.00', '2');
INSERT INTO `produto` VALUES ('16', 'Suflair', '6.00', '3');
INSERT INTO `produto` VALUES ('17', 'Trident', '2.50', '3');
INSERT INTO `produto` VALUES ('18', 'M&Ms Chocolate', '7.50', '3');
INSERT INTO `produto` VALUES ('19', 'Salgadinho Doritos', '7.00', '2');
INSERT INTO `produto` VALUES ('20', 'Garrafa Star Trek', '0.00', '5');
INSERT INTO `produto` VALUES ('21', 'Chaveiro Esquadrão Suicida', '0.00', '5');
INSERT INTO `produto` VALUES ('22', 'Água sem Gás', '4.00', '1');
INSERT INTO `produto` VALUES ('23', 'Água com Gás', '4.00', '1');
INSERT INTO `produto` VALUES ('24', 'Dentaduras Fini 80g', '6.00', '3');
INSERT INTO `produto` VALUES ('25', 'Guarana Antarctica 350 ml', '8.00', '1');
INSERT INTO `produto` VALUES ('26', 'Red Bull 250 ml', '9.00', '1');
INSERT INTO `produto` VALUES ('27', 'Tubes Fini 80g', '6.00', '3');
INSERT INTO `produto` VALUES ('28', 'Halls', '2.00', '3');
INSERT INTO `produto` VALUES ('29', 'Pão de queijo', '6.00', '2');
INSERT INTO `produto` VALUES ('30', 'Pipoca Doce Média', '10.00', '3');

-- ----------------------------
-- Table structure for profissional
-- ----------------------------
DROP TABLE IF EXISTS `profissional`;
CREATE TABLE `profissional` (
  `cd_profissional` int(11) NOT NULL AUTO_INCREMENT,
  `nm_profissional` varchar(100) NOT NULL,
  `ds_sexo_profissional` enum('M','F') NOT NULL,
  `dt_nasc_profissional` date NOT NULL,
  `dt_obito_profissional` date DEFAULT NULL,
  PRIMARY KEY (`cd_profissional`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of profissional
-- ----------------------------
INSERT INTO `profissional` VALUES ('20', 'Tim Robbins', 'M', '1958-10-16', null);
INSERT INTO `profissional` VALUES ('21', 'Marlon Brando', 'M', '1958-10-16', '2004-07-01');
INSERT INTO `profissional` VALUES ('22', 'Christian Bale', 'M', '1974-01-30', null);
INSERT INTO `profissional` VALUES ('23', 'Liam Neeson', 'M', '1952-07-07', null);
INSERT INTO `profissional` VALUES ('24', 'Cate Blanchett', 'M', '1969-04-14', null);
INSERT INTO `profissional` VALUES ('25', 'Martin Balsam', 'M', '1919-04-11', '1996-02-16');
INSERT INTO `profissional` VALUES ('26', 'Luigi Pistilli', 'M', '1929-07-19', '1996-04-21');
INSERT INTO `profissional` VALUES ('27', 'John Travolta', 'M', '1954-02-18', null);
INSERT INTO `profissional` VALUES ('28', 'Brad Pitt', 'M', '1963-12-18', null);
INSERT INTO `profissional` VALUES ('29', 'Elijah Wood', 'M', '1981-01-28', null);
INSERT INTO `profissional` VALUES ('30', 'Irvin Kershner', 'M', '1923-04-29', '2010-11-27');
INSERT INTO `profissional` VALUES ('31', 'Sally Field', 'F', '1946-11-06', null);
INSERT INTO `profissional` VALUES ('32', 'Ian McKellen', 'M', '1939-05-25', null);
INSERT INTO `profissional` VALUES ('33', 'Louisa Moritz', 'F', '1946-09-25', null);
INSERT INTO `profissional` VALUES ('34', 'Joe Pesci', 'M', '1943-02-09', null);
INSERT INTO `profissional` VALUES ('35', 'Carrie-Anne Moss', 'F', '1967-08-21', null);
INSERT INTO `profissional` VALUES ('36', 'Toshirô Mifune', 'M', '1920-04-01', '1997-12-24');
INSERT INTO `profissional` VALUES ('37', 'Harrison Ford', 'M', '1942-07-13', null);
INSERT INTO `profissional` VALUES ('38', 'Alice Braga', 'F', '1983-04-15', null);
INSERT INTO `profissional` VALUES ('39', 'Morgan Freeman', 'M', '1937-07-01', null);
INSERT INTO `profissional` VALUES ('40', 'Jodie Foster', 'F', '1962-11-19', null);
INSERT INTO `profissional` VALUES ('41', 'James Stewart', 'M', '1908-05-20', '1997-07-02');
INSERT INTO `profissional` VALUES ('42', 'Kevin Spacey', 'M', '1959-07-26', null);
INSERT INTO `profissional` VALUES ('43', 'Roberto Benigni', 'M', '1952-10-27', null);
INSERT INTO `profissional` VALUES ('44', 'Jean Reno', 'M', '1948-07-30', null);
INSERT INTO `profissional` VALUES ('45', 'Hayao Miyazaki', 'M', '1941-01-05', null);
INSERT INTO `profissional` VALUES ('46', 'Henry Fonda', 'M', '1905-05-16', '1982-08-12');
INSERT INTO `profissional` VALUES ('47', 'Tom Hanks', 'M', '1956-07-09', null);
INSERT INTO `profissional` VALUES ('48', 'Alexandre Rodrigues', 'M', '1983-05-21', null);
INSERT INTO `profissional` VALUES ('49', 'Steven Spielberg', 'M', '1946-12-18', null);
INSERT INTO `profissional` VALUES ('50', 'Gabriel Byrne', 'M', '1950-05-12', null);
INSERT INTO `profissional` VALUES ('51', 'Leonardo DiCaprio', 'M', '1974-11-11', null);
INSERT INTO `profissional` VALUES ('52', 'Keanu Reeves', 'M', '1964-09-02', null);
INSERT INTO `profissional` VALUES ('53', 'Laurence Fishburne', 'M', '1961-07-30', null);
INSERT INTO `profissional` VALUES ('54', 'Viggo Mortensen', 'M', '1958-10-20', null);
INSERT INTO `profissional` VALUES ('55', 'Heath Ledger', 'M', '1979-04-04', '2008-01-22');

-- ----------------------------
-- Table structure for programacao
-- ----------------------------
DROP TABLE IF EXISTS `programacao`;
CREATE TABLE `programacao` (
  `cd_programacao` int(11) NOT NULL AUTO_INCREMENT,
  `cd_filme` int(11) NOT NULL,
  `cd_complexo` tinyint(4) NOT NULL,
  `dt_inicio` date NOT NULL,
  `dt_fim` date DEFAULT NULL,
  PRIMARY KEY (`cd_programacao`),
  KEY `fk_programacao_complexo` (`cd_complexo`),
  KEY `fk_programacao_filme` (`cd_filme`),
  CONSTRAINT `fk_programacao_complexo` FOREIGN KEY (`cd_complexo`) REFERENCES `complexo` (`cd_complexo`),
  CONSTRAINT `fk_programacao_filme` FOREIGN KEY (`cd_filme`) REFERENCES `filme` (`cd_filme`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of programacao
-- ----------------------------

-- ----------------------------
-- Table structure for sala
-- ----------------------------
DROP TABLE IF EXISTS `sala`;
CREATE TABLE `sala` (
  `cd_sala` smallint(6) NOT NULL AUTO_INCREMENT,
  `nm_sala` varchar(60) NOT NULL,
  `cd_complexo` tinyint(4) NOT NULL,
  `cd_tipo_sala` tinyint(4) NOT NULL,
  PRIMARY KEY (`cd_sala`),
  KEY `fk_sala_complexo` (`cd_complexo`),
  KEY `fk_sala_tipo_sala` (`cd_tipo_sala`),
  CONSTRAINT `fk_sala_complexo` FOREIGN KEY (`cd_complexo`) REFERENCES `complexo` (`cd_complexo`),
  CONSTRAINT `fk_sala_tipo_sala` FOREIGN KEY (`cd_tipo_sala`) REFERENCES `tipo_sala` (`cd_tipo_sala`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sala
-- ----------------------------

-- ----------------------------
-- Table structure for sessao
-- ----------------------------
DROP TABLE IF EXISTS `sessao`;
CREATE TABLE `sessao` (
  `cd_sessao` int(11) NOT NULL AUTO_INCREMENT,
  `dt_sessao_inicio` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dt_sessao_fim` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cd_sala` smallint(6) DEFAULT NULL,
  `cd_programacao` int(11) NOT NULL,
  PRIMARY KEY (`cd_sessao`),
  KEY `fk_sessao_programacao` (`cd_programacao`),
  KEY `fk_sessao_sala` (`cd_sala`),
  CONSTRAINT `fk_sessao_programacao` FOREIGN KEY (`cd_programacao`) REFERENCES `programacao` (`cd_programacao`),
  CONSTRAINT `fk_sessao_sala` FOREIGN KEY (`cd_sala`) REFERENCES `sala` (`cd_sala`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sessao
-- ----------------------------

-- ----------------------------
-- Table structure for telefone
-- ----------------------------
DROP TABLE IF EXISTS `telefone`;
CREATE TABLE `telefone` (
  `cd_telefone` int(11) NOT NULL AUTO_INCREMENT,
  `tp_telefone` enum('Celular','Comercial','Residencial') DEFAULT NULL,
  `nu_ddd` char(3) NOT NULL,
  `nu_telefone` char(9) NOT NULL,
  `cd_cliente` int(11) NOT NULL,
  `cd_pais` smallint(6) NOT NULL,
  PRIMARY KEY (`cd_telefone`),
  KEY `fk_telefone_cliente` (`cd_cliente`),
  KEY `fk_telefone_pais` (`cd_pais`),
  CONSTRAINT `fk_telefone_cliente` FOREIGN KEY (`cd_cliente`) REFERENCES `cliente` (`cd_cliente`),
  CONSTRAINT `fk_telefone_pais` FOREIGN KEY (`cd_pais`) REFERENCES `pais` (`cd_pais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of telefone
-- ----------------------------

-- ----------------------------
-- Table structure for tipo_complexo
-- ----------------------------
DROP TABLE IF EXISTS `tipo_complexo`;
CREATE TABLE `tipo_complexo` (
  `cd_tipo_complexo` tinyint(4) NOT NULL AUTO_INCREMENT,
  `nm_tipo_complexo` varchar(30) NOT NULL,
  PRIMARY KEY (`cd_tipo_complexo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tipo_complexo
-- ----------------------------

-- ----------------------------
-- Table structure for tipo_filme
-- ----------------------------
DROP TABLE IF EXISTS `tipo_filme`;
CREATE TABLE `tipo_filme` (
  `cd_tipo_filme` tinyint(4) NOT NULL AUTO_INCREMENT,
  `nm_tipo_filme` varchar(30) NOT NULL,
  PRIMARY KEY (`cd_tipo_filme`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tipo_filme
-- ----------------------------
INSERT INTO `tipo_filme` VALUES ('1', 'Filme longa metragem');

-- ----------------------------
-- Table structure for tipo_sala
-- ----------------------------
DROP TABLE IF EXISTS `tipo_sala`;
CREATE TABLE `tipo_sala` (
  `cd_tipo_sala` tinyint(4) NOT NULL AUTO_INCREMENT,
  `nm_tipo_sala` varchar(30) NOT NULL,
  `vl_tipo_sala` decimal(6,2) NOT NULL,
  PRIMARY KEY (`cd_tipo_sala`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tipo_sala
-- ----------------------------

-- ----------------------------
-- Table structure for venda
-- ----------------------------
DROP TABLE IF EXISTS `venda`;
CREATE TABLE `venda` (
  `cd_venda` int(11) NOT NULL AUTO_INCREMENT,
  `dt_venda` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cd_cliente` int(11) NOT NULL,
  `vl_venda` decimal(7,2) NOT NULL,
  `cd_funcionario` int(11) NOT NULL,
  PRIMARY KEY (`cd_venda`),
  KEY `fk_venda_cliente` (`cd_cliente`),
  KEY `fk_venda_funcionario` (`cd_funcionario`),
  CONSTRAINT `fk_venda_cliente` FOREIGN KEY (`cd_cliente`) REFERENCES `cliente` (`cd_cliente`),
  CONSTRAINT `fk_venda_funcionario` FOREIGN KEY (`cd_funcionario`) REFERENCES `funcionario` (`cd_funcionario`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of venda
-- ----------------------------
INSERT INTO `venda` VALUES ('11', '2017-03-07 23:32:17', '11', '8.00', '1');

-- ----------------------------
-- Table structure for venda_item
-- ----------------------------
DROP TABLE IF EXISTS `venda_item`;
CREATE TABLE `venda_item` (
  `cd_venda_item` int(11) NOT NULL AUTO_INCREMENT,
  `qt_venda_item` tinyint(4) NOT NULL,
  `cd_produto` mediumint(9) NOT NULL,
  `cd_venda` int(11) NOT NULL,
  PRIMARY KEY (`cd_venda_item`),
  KEY `fk_venda_item_produto` (`cd_produto`),
  KEY `fk_venda_item_venda` (`cd_venda`),
  CONSTRAINT `fk_venda_item_produto` FOREIGN KEY (`cd_produto`) REFERENCES `produto` (`cd_produto`),
  CONSTRAINT `fk_venda_item_venda` FOREIGN KEY (`cd_venda`) REFERENCES `venda` (`cd_venda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of venda_item
-- ----------------------------

-- ----------------------------
-- View structure for vw_pais
-- ----------------------------
DROP VIEW IF EXISTS `vw_pais`;
CREATE ALGORITHM=UNDEFINED DEFINER=`b97c74b4130bbd`@`%` SQL SECURITY DEFINER VIEW `vw_pais` AS select `pais`.`cd_pais` AS `CODIGO`,`pais`.`nm_pais` AS `NOME` from `pais` ;

-- ----------------------------
-- View structure for vw_total_por_categoria
-- ----------------------------
DROP VIEW IF EXISTS `vw_total_por_categoria`;
CREATE ALGORITHM=UNDEFINED DEFINER=`b97c74b4130bbd`@`%` SQL SECURITY DEFINER VIEW `vw_total_por_categoria` AS select `cat`.`nm_categoria` AS `NOME_CATEGORIA`,sum(`prd`.`vl_produto`) AS `TOTAL_CATEGORIA` from (`produto` `prd` join `categoria` `cat` on((`cat`.`cd_categoria` = `prd`.`cd_categoria`))) group by `cat`.`nm_categoria` ;

-- ----------------------------
-- Procedure structure for AUMENTO_FUNC
-- ----------------------------
DROP PROCEDURE IF EXISTS `AUMENTO_FUNC`;
DELIMITER ;;
CREATE DEFINER=`b97c74b4130bbd`@`%` PROCEDURE `AUMENTO_FUNC`(IN COD_FUNC INTEGER)
BEGIN
		DECLARE VCARGO VARCHAR(30);
        
        SELECT NM_CARGO
        INTO VCARGO
        FROM CARGO C
        INNER JOIN FUNCIONARIO F
        ON F.CD_CARGO = C.CD_CARGO
        WHERE CD_FUNCIONARIO = COD_FUNC;
        
        CASE VCARGO
        WHEN 'GERENTE' THEN
			UPDATE FUNCIONARIO
            SET VL_SALARIO = VL_SALARIO + (VL_SALARIO*1.1)
            WHERE CD_FUNCIONARIO = COD_FUNC;
		WHEN 'PRESIDENTE' THEN
			UPDATE FUNCIONARIO
            SET VL_SALARIO = VL_SALARIO + (VL_SALARIO*1.15)
            WHERE CD_FUNCIONARIO = COD_FUNC;
		WHEN 'GESTOR' THEN
			UPDATE FUNCIONARIO
            SET VL_SALARIO = VL_SALARIO + (VL_SALARIO*0.5)
            WHERE CD_FUNCIONARIO = COD_FUNC;
		END CASE;
	
	END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for FN_DEMITE_FUNCIONARIO
-- ----------------------------
DROP PROCEDURE IF EXISTS `FN_DEMITE_FUNCIONARIO`;
DELIMITER ;;
CREATE DEFINER=`b97c74b4130bbd`@`%` PROCEDURE `FN_DEMITE_FUNCIONARIO`(IN COD_FUNC INTEGER, IN DATE_DMS datetime)
BEGIN
		UPDATE FUNCIONARIO
        SET DT_DEMISSAO = DATE_DMS
        WHERE COD_FUNC = CD_FUNCIONARIO;
	END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_da_erro
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_da_erro`;
DELIMITER ;;
CREATE DEFINER=`b97c74b4130bbd`@`%` PROCEDURE `sp_da_erro`()
BEGIN
	SIGNAL sqlstate '45001' SET MESSAGE_TEXT = 'Deu erro';

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_estrelas_por_extenso
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_estrelas_por_extenso`;
DELIMITER ;;
CREATE DEFINER=`b97c74b4130bbd`@`%` PROCEDURE `sp_estrelas_por_extenso`( IN pCdCli INT)
BEGIN
	DECLARE vNumEstrelas TINYINT DEFAULT 0;
    
    SELECT nu_estrelas 
    INTO vNumEstrelas
    FROM cliente
    WHERE cd_cliente = pCdCli;
    
    CASE vNumEstrelas
    WHEN 5 THEN
		SELECT 'Cinco estrelas';
	WHEN 4 THEN
		SELECT 'Quatro estrelas';
	WHEN 3 THEN
		SELECT 'Três estrelas';
	WHEN 2 THEN
		SELECT 'Duas estrelas';
	WHEN 1 THEN
		SELECT 'Uma estrela';
	ELSE
		SELECT 'Zero estrelas';
	END CASE;
        

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for SP_EXIBE_PRODUTO
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_EXIBE_PRODUTO`;
DELIMITER ;;
CREATE DEFINER=`b97c74b4130bbd`@`%` PROCEDURE `SP_EXIBE_PRODUTO`(
				 IN V_CODIGO MEDIUMINT)
    READS SQL DATA
BEGIN
	SELECT *
    FROM PRODUTO
    WHERE CD_PRODUTO = V_CODIGO;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_exibir_clientes
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_exibir_clientes`;
DELIMITER ;;
CREATE DEFINER=`b97c74b4130bbd`@`%` PROCEDURE `sp_exibir_clientes`(IN pSexo CHAR(9))
BEGIN
	IF pSexo = 'Masculino' THEN
		SELECT * FROM cliente WHERE ds_sexo = 'M';
	ELSE
		SELECT * FROM cliente WHERE ds_sexo = 'F';
    END IF;
	
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for SP_HELLO_WORLD
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_HELLO_WORLD`;
DELIMITER ;;
CREATE DEFINER=`b97c74b4130bbd`@`%` PROCEDURE `SP_HELLO_WORLD`()
BEGIN
	SELECT 'HELLO WORLD' FRASE;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for SP_LOOP1
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_LOOP1`;
DELIMITER ;;
CREATE DEFINER=`b97c74b4130bbd`@`%` PROCEDURE `SP_LOOP1`()
BEGIN
	
	DECLARE CONTADOR TINYINT DEFAULT 1;
	TESTE: LOOP
		SELECT CONTADOR + 1;
        SET CONTADOR = CONTADOR + 1;
    
		IF CONTADOR = 11 THEN
			LEAVE TESTE;
		END IF;
    
    END LOOP TESTE;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for SP_LOOP2
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_LOOP2`;
DELIMITER ;;
CREATE DEFINER=`b97c74b4130bbd`@`%` PROCEDURE `SP_LOOP2`()
BEGIN
	DECLARE CONTADOR TINYINT DEFAULT 5;
    DECLARE TOTAL TINYINT DEFAULT 0;
    
    REPEAT
		SET TOTAL = TOTAL + CONTADOR;
        SET CONTADOR = CONTADOR - 1;
    UNTIL CONTADOR = 0
    END REPEAT;
    
END
;;
DELIMITER ;
SET FOREIGN_KEY_CHECKS=1;
