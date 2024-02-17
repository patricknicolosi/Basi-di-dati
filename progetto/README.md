Cose da chiedere
1. Nel Glossario dei termini, i termini collegati sono letteralmente i termini collegati nelle frasi? Oppure sono le entità a cui sono collegate nello schema E/R?
2. Nella tabella dei volumi il Volume è quello TOTALE occupato? Ad esempio ci sono 20 software, 30 release per software. Il volume totale è 20*30=600
3. è possibile che dallo schema ristrutturato si trovino delle ridondanze che lo schema iniziale non presentava?
4.  Devo per forza indicare   ID_software INT PRIMARY KEY NOT NULL per dire che la chiave deve essere NOT NULL? Oppure una chiave primaria è sempre di default NOT NULL?
5. Dato il codice

CREATE TABLE Software (
    ID_software INT PRIMARY KEY NOT NULL,
    Nome VARCHAR(255) NOT NULL,
    OS VARCHAR(100)
);

CREATE TABLE Releases (
    ID_software INT,
    Versione VARCHAR(50) NOT NULL,
    Note TEXT,
    Data DATE NOT NULL,
    PRIMARY KEY (ID_software, Versione),
    FOREIGN KEY (ID_software) REFERENCES Software(ID_software)
);

Releases.ID_software non deve essere NULL. Devo per forza indicare questa cosa? Oppure posso evitare visto che fa riferimento a Software.ID_software dove ho già detto essere non NULL?
