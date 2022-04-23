CREATE TABLE tb_conta (
  dtype VARCHAR(50) NOT NULL,
  codigo BIGINT(20) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  agencia VARCHAR(20) NOT NULL,
  data_criacao DATE NOT NULL,
  numero_conta VARCHAR(255) NOT NULL,
  saldo DECIMAL(15,2) DEFAULT NULL,
  tipo_conta VARCHAR(255) NOT NULL,
  limite_de_credito_pre_aprovado DECIMAL(15,2) DEFAULT NULL,
  cod_cliente BIGINT(20) NOT NULL,
  CONSTRAINT fk_cliente FOREIGN KEY (cod_cliente) REFERENCES tb_cliente (codigo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO tb_conta (dtype, agencia, data_criacao, numero_conta, tipo_conta, limite_de_credito_pre_aprovado, cod_cliente)
VALUES('CC', '0365', '2022-04-22', '159874-6', 'CONTA_CORRENTE', null, 1);

INSERT INTO tb_conta (dtype, agencia, data_criacao, numero_conta, tipo_conta, limite_de_credito_pre_aprovado, cod_cliente)
VALUES('CC', '0365', '2022-04-22', '854962-6', 'CONTA_CORRENTE', null, 2);

INSERT INTO tb_conta (dtype, agencia, data_criacao, numero_conta, tipo_conta, limite_de_credito_pre_aprovado, cod_cliente)
VALUES('CC', '0365', '2022-04-22', '369147-6', 'CONTA_CORRENTE', null, 3);

INSERT INTO tb_conta (dtype, agencia, data_criacao, numero_conta, tipo_conta, limite_de_credito_pre_aprovado, cod_cliente)
VALUES('CE', '0365', '2022-04-22', '851369-6', 'CONTA_ESPECIAL', 300, 4);

INSERT INTO tb_conta (dtype, agencia, data_criacao, numero_conta, tipo_conta, limite_de_credito_pre_aprovado, cod_cliente)
VALUES('CE', '0365', '2022-04-22', '741589-6', 'CONTA_ESPECIAL', 300, 5);


