CREATE TABLE Software (
    ID_software INT PRIMARY KEY,
    Nome VARCHAR(255),
    OS VARCHAR(100)
);

CREATE TABLE Releases (
    ID_software INT,
    Versione VARCHAR(50),
    Note TEXT,
    Data DATE,
    PRIMARY KEY (ID_software, Versione),
    FOREIGN KEY (ID_software) REFERENCES Software(ID_software)
);

CREATE TABLE Ticket (
    ID_ticket INT PRIMARY KEY,
    ID_software INT,
    Versione VARCHAR(50),
    Stato VARCHAR(50) DEFAULT 'Non Assegnato' CHECK (Stato IN ('Aperto', 'Chiuso', 'Non Assegnato')),
    Descrizione TEXT,
    Data_apertura DATE,
    Data_chiusura DATE,
    FOREIGN KEY (ID_software, Versione) REFERENCES Releases(ID_software, Versione)
);

CREATE TABLE Developer (
    CF_developer VARCHAR(16) PRIMARY KEY,
    Nome VARCHAR(50),
    Cognome VARCHAR(50)
);

CREATE TABLE Ticket_Assegnato (
    CF_Developer VARCHAR(16),
    ID_ticket INT,
    PRIMARY KEY (ID_ticket, CF_Developer),
    FOREIGN KEY (ID_ticket) REFERENCES Ticket(ID_ticket),
    FOREIGN KEY (CF_Developer) REFERENCES Developer(CF_developer)
);
