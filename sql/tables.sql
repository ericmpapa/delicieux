CREATE TABLE utilisateur(
    id TEXT PRIMARY KEY,
    nom TEXT,
    prenom TEXT,
    adresse TEXT,
    avatarUrl TEXT,
    tel TEXT,
    email TEXT
);

CREATE TABLE plat(
    id SERIAL PRIMARY KEY,
    nom TEXT,
    description TEXT,
    prixUnitaire DECIMAL(10,2),
    estimationLivraision TEXT,
    photoUrl TEXT,
);

CREATE TABLE commande(
    id SERIAL PRIMARY KEY,
    idUtilisateur TEXT,
    dateCommande DATE,
    CONSTRAINT fk_id_utilisateur FOREIGN KEY(idUtilisateur) REFERENCES utilisateur(id)
);

CREATE TABLE detail_commande(
    idPlat INTEGER,
    idCommande INTEGER,
    qte INTEGER,
    CONSTRAINT fk_id_plat FOREIGN KEY(idPlat) REFERENCES plat(id),
    CONSTRAINT fk_id_commande FOREIGN KEY(idCommande) REFERENCES commande(id),
    PRIMARY KEY(idPlat,idCommande)
);