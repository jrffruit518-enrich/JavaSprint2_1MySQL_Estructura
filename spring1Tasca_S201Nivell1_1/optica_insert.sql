USE optica;
INSERT INTO suppliers (supplier_name,nif,street,`number`,`floor`,door,city,postcode,country,telephone,fax)
VALUES
('GoodOptica','456215398','alonzo','18',NULL,'A','Barcelona','08154',DEFAULT,'693518664','950012564'),
('NiceGlasses','367815398','sant juan','373','2',NULL,'Valencia','08393',DEFAULT,'693658636','986520134'),
('SuperLens','415645398','aragon','189',NULL,'1503','Barcelona','08274',DEFAULT,'612368657','950375812');



INSERT INTO brands (brand_name,supplier_id)
VALUES
('Rapid',1),
('Fast',2),
('Great',3),
('Wonder',1),
('Miracle',1),
('Glad',3);

INSERT INTO glasses (brand_id,left_graduation,right_graduation,left_colour,right_colour,frame_type,frame_colour,price)
VALUES
(1,2.75,3.65,'blue','red','rimless','yellow',158.00),
(2,1.45,2.68,'grey','purple','plastic','golden',98.00),
(3,4.25,2.65,'green','black','metal','silver',108.00),
(4,2.35,1.55,'blue','red','rimless','yellow',78.00),
(5,2.75,2.15,'blue','red','plastic','white',88.00),
(6,3.84,4.15,'black','red','metal','green',99.00);




SELECT * FROM glasses;
