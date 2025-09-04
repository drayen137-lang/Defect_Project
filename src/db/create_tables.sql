-- Kimball-style star schema (SQLite dialect for demo)

-- Dimensions
CREATE TABLE IF NOT EXISTS DimDate (
  DateID INTEGER PRIMARY KEY,
  FullDate TEXT,
  Date TEXT,
  Jour INTEGER,
  Mois INTEGER,
  Annee INTEGER,
  Heure INTEGER,
  Minute INTEGER,
  Seconde INTEGER
);

CREATE TABLE IF NOT EXISTS DimLigne (
  LigneID INTEGER PRIMARY KEY,
  LigneNom TEXT,
  NombreDePoste INTEGER,
  Activite TEXT,
  UAP TEXT,
  StatuLigne TEXT,
  SuperViseur TEXT
);

CREATE TABLE IF NOT EXISTS DimPoste (
  PosteID INTEGER PRIMARY KEY,
  Poste TEXT,
  Description TEXT,
  Categorie TEXT,
  TypePoste TEXT,
  NiveauCompetenceRequis TEXT
);

CREATE TABLE IF NOT EXISTS DimDefaultType (
  DefaultID INTEGER PRIMARY KEY,
  DefaultDescription TEXT,
  DefaultRef TEXT
);

CREATE TABLE IF NOT EXISTS DimReporter (
  ReporterID INTEGER PRIMARY KEY,
  EmailAddress TEXT,
  Nom TEXT,
  Prenom TEXT,
  Domaine TEXT,
  Statu TEXT
);

-- Fact
CREATE TABLE IF NOT EXISTS FaitDefaults (
  DefectID INTEGER PRIMARY KEY,
  LigneID INTEGER,
  PosteID INTEGER,
  DefaultTypeID INTEGER,
  ReporterID INTEGER,
  Quantite INTEGER,
  QuantiteMauvaise INTEGER,
  DateID INTEGER,
  FOREIGN KEY (LigneID) REFERENCES DimLigne(LigneID),
  FOREIGN KEY (PosteID) REFERENCES DimPoste(PosteID),
  FOREIGN KEY (DefaultTypeID) REFERENCES DimDefaultType(DefaultID),
  FOREIGN KEY (ReporterID) REFERENCES DimReporter(ReporterID),
  FOREIGN KEY (DateID) REFERENCES DimDate(DateID)
);
