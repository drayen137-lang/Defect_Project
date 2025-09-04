-- Minimal seeds for demo dims (synthetic)

INSERT OR IGNORE INTO DimLigne VALUES
(1,'Ligne A',10,'Assemblage','UAP-1','Active','SV A'),
(2,'Ligne B',12,'Assemblage','UAP-1','Active','SV B'),
(3,'Ligne C',8,'Assemblage','UAP-2','Maintenance','SV C');

INSERT OR IGNORE INTO DimPoste VALUES
(11,'Poste 11','Desc 11','Cat A','Type 1','N1'),
(12,'Poste 12','Desc 12','Cat A','Type 1','N1'),
(21,'Poste 21','Desc 21','Cat B','Type 2','N2'),
(22,'Poste 22','Desc 22','Cat B','Type 2','N2'),
(31,'Poste 31','Desc 31','Cat C','Type 3','N3');

INSERT OR IGNORE INTO DimDefaultType VALUES
(101,'Scratches','SCR'),
(102,'Cracks','CRK'),
(103,'Misalignment','MSA'),
(104,'Color defect','COL');

INSERT OR IGNORE INTO DimReporter VALUES
(501,'r1@example.com','Ali','A.','Qualite','Actif'),
(502,'r2@example.com','Sami','S.','Production','Actif'),
(503,'r3@example.com','Maya','M.','Qualite','Actif'),
(504,'r4@example.com','Hana','H.','Production','Actif'),
(505,'r5@example.com','Omar','O.','Maintenance','Actif');
