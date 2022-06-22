INSERT INTO ESTADO (SGESTADO)
VALUES ('SP'),
       ('RJ'),
       ('MG'),
       ('ES'),
       ('BA'),
       ('RN');


INSERT INTO CIDADE (SGESTADO, NMCIDADE)
VALUES ('RN', 'Natal'),
       ('RN', 'Canguaretama'),
       ('RN', 'São Gabriel'),
       ('SP', 'São Paulo'),
       ('SP', 'Barueri');

INSERT INTO BAIRRO (CDCIDADE, SGESTADO, NMBAIRRO)
VALUES (1, 'RN', 'Ponta Negra'),
       (1, 'RN', 'Parque dos Coqueiros'),
       (1, 'RN', 'Cidade da Esperança'),
       (4, 'SP', 'Centro'),
       (4, 'SP', 'Vila Mariana');


INSERT INTO VENDEDOR (NMVENDEDOR, NMENDERECO, EMAIL, NRCPF, TELEFONE)
VALUES ('Maria Barbosa', 'Rua Silva, 45', 'maria@gmail.com', '60410035068', '(84) 97505-4785'),
       ('João Pedro', 'Rua da Paz, 12', 'joao@gmail.com', '12629837033', '(84) 98394-5439'),
       ('José da Silva', 'Rua dois, 10', 'jose@gmail.com', '93803132096', '(84) 98637-6529'),
       ('Pedro Pereira', 'Rua Quatro, 20', 'pedro@gmail.com', '37004795063', '(84) 98773-7192');


INSERT INTO IMOVEL (CDVENDEDOR, CDBAIRRO, CDCIDADE, SGESTADO, NMENDERECO, NRAREAUTIL, NRAREATOTAL, VLPRECO, IMOVEL_INDICADO)
VALUES (2, 1, 1, 'RN', 'R. das Pedrinhas, S/N', 300, 500, 100000, 1),
       (2, 2, 1, 'RN', 'R. Dr. Roberto', 200, 300, 200000, 2),
       (3, 3, 1, 'RN', 'R. das Flores', 300, 500, 300000, 3),
       (3, 1, 1, 'RN', 'R. Jardim Esperança', 100, 200, 400000, 1),
       (1, 2, 1, 'RN', 'Av. da Esperança', 100, 200, 500000, NULL),
       (4, 3, 1, 'RN', 'Av. ', 200, 300, 600000, 1);


INSERT INTO COMPRADOR (NMCOMPRADOR, NMENDERECO, EMAIL, NRCPF, TELEFONE)
VALUES ('Carlos José', 'Rua Jose', 'carlos@gmail.com', '40877899002', '(84) 98150-4614'),
       ('João Pedro', 'R. da Paz, 12', 'joaop@gmail.com', '12737603013', '(84) 98671-2580'),
       ('José da Silva', 'Rua dois, 10', 'josee@gmail.com', '58378603040', '(84) 98252-5711'),
       ('Pedro Pereira', 'Rua Quatro, 20', 'pedroo@gmail.com', '54195620066', '(84) 99766-3731');


INSERT INTO OFERTA (CDIMOVEL, CDCOMPRADOR, VLOFERTA, DTOFERTA)
VALUES (1, 1, 10000, '2022-02-15'),
       (3, 1, 11000, '2022-04-03'),
       (2, 2, 12000, '2022-01-08'),
       (4, 2, 13000, '2022-02-08'),
       (1, 3, 12000, '2022-05-25'),
       (2, 3, 12000, '2022-01-10');