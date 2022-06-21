INSERT INTO estado (sgestado, nmestado)
VALUES ('SP', 'SÃO PAULO'),
       ('RJ', 'Rio de Janeiro'),
       ('MG', 'Minas Gerais'),
       ('ES', 'Espírito Santo'),
       ('BA', 'Bahia'),
       ('RN', 'Rio Grande do Norte');


INSERT INTO cidade (cdcidade, sgestado, nmcidade)
VALUES (1, 'RN', 'Natal'),
       (2, 'RN', 'Canguaretama'),
       (3, 'RN', 'São Gabriel'),
       (4, 'SP', 'São Paulo'),
       (5, 'SP', 'Barueri');


INSERT INTO bairro (cdbairro, cdcidade, sgestado, nmbairro)
VALUES (1, 1, 'RN', 'Ponta Negra'),
       (2, 1, 'RN', 'Parque dos Coqueiros'),
       (3, 1, 'RN', 'Cidade da Esperança'),
       (1, 4, 'SP', 'Centro'),
       (2, 4, 'SP', 'Vila Mariana');


INSERT INTO vendedor (cdvendedor, nmvendedor, nmendereco, email)
VALUES (1, 'Maria Barbosa', 'Rua Silva, 45', 'maria@gmail.com'),
       (2, 'João Pedro', 'Rua da Paz, 12', 'joao@gmail.com'),
       (3, 'José da Silva', 'Rua dois, 10', 'jose@gmail.com'),
       (4, 'Pedro Pereira', 'Rua Quatro, 20', 'pedro@gmail.com');


INSERT INTO imovel (cdimovel, cdvendedor, cdbairro, cdcidade, sgestado, nmendereco, nrareautil, nrareatot, vlpreco, imovel_indicado)
VALUES (1, 2, 1, 1, 'RN', 'R. das Pedrinhas, S/N', 300, 500, 100000, 1),
       (2, 2, 2, 1, 'RN', 'R. Dr. Roberto', 200, 300, 200000, 2),
       (3, 3, 3, 1, 'RN', 'R. das Flores', 300, 500, 300000, 3),
       (4, 3, 1, 1, 'RN', 'R. Jardim Esperança', 100, 200, 400000, 1),
       (5, 1, 2, 1, 'RN', 'Av. da Esperança', 100, 200, 500000, NULL),
       (6, 4, 3, 1, 'RN', 'Av. ', 200, 300, 600000, 1);


INSERT INTO comprador (cdcomprador, nmcomprador, nmendereco, email)
VALUES (1, 'Carlos José', 'Rua Jose', 'carlos@gmail.com'),
       (2, 'João Pedro', 'R. da Paz, 12', 'joaop@gmail.com'),
       (3, 'José da Silva', 'Rua dois, 10', 'josee@gmail.com'),
       (4, 'Pedro Pereira', 'Rua Quatro, 20', 'pedroo@gmail.com');


INSERT INTO oferta (cdimovel, cdcomprador, vloferta, dtoferta)
VALUES (1, 1, 10000, '2022-07-15'),
       (3, 1, 11000, '2022-07-15'),
       (2, 2, 12000, '2022-01-08'),
       (4, 2, 13000, '2022-01-08'),
       (1, 3, 12000, '2022-07-95'),
       (2, 3, 12000, '2022-01-10');