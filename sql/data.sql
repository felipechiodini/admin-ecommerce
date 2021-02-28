INSERT INTO coupon(active, name, code, discount) VALUE(1, 'Cupon Verão 2021', 'VERAO2021', 5);
INSERT INTO coupon(active, name, code, discount) VALUE(1, 'Cupon Verão 2021', 'VERAO202110', 10);

INSERT INTO user(name, login, password) VALUES('Felipe Bona', 'felipe.bona', '132567');


INSERT INTO role(name) VALUES('Ecommerce');
INSERT INTO role(name) VALUES('Expedição');

INSERT INTO address(complement, street, cep, number) VALUES('Casa', 'Clécio Stringari', '89253390', '45');

INSERT INTO job(id_address, id_role, active, name, requirements, activities, differential) VALUES(1, 2, 1, 'Piloto Civic do papi', '2 metros like a Bruno Fodi', 'dar benga usando civic', 'usufilme / stage 2');