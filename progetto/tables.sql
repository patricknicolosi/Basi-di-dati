CREATE TABLE Software (
    ID_software INT PRIMARY KEY NOT NULL,
    Nome VARCHAR(255) NOT NULL,
    OS VARCHAR(100)
);

CREATE TABLE Releases (
    ID_software INT NOT NULL,
    Versione VARCHAR(50) NOT NULL,
    Note TEXT,
    Data DATE NOT NULL,
    PRIMARY KEY (ID_software, Versione),
    FOREIGN KEY (ID_software) REFERENCES Software(ID_software)
);

CREATE TABLE Ticket (
    ID_ticket INT PRIMARY KEY NOT NULL,
    ID_software INT NOT NULL,
    Versione VARCHAR(50) NOT NULL,
    Stato VARCHAR(50) DEFAULT 'Non Assegnato' CHECK (Stato IN ('Aperto', 'Chiuso', 'Non Assegnato')),
    Descrizione VARCHAR(50) NOT NULL,
    Data_apertura DATE NOT NULL,
    Data_chiusura DATE,
    FOREIGN KEY (ID_software, Versione) REFERENCES Releases(ID_software, Versione)
);

CREATE TABLE Developer (
    CF_developer VARCHAR(16) PRIMARY KEY NOT NULL,
    Nome VARCHAR(50) NOT NULL,
    Cognome VARCHAR(50) NOT NULL
);

CREATE TABLE Ticket_Assegnato (
    CF_Developer VARCHAR(16) NOT NULL,
    ID_ticket INT NOT NULL,
    PRIMARY KEY (ID_ticket, CF_Developer),
    FOREIGN KEY (ID_ticket) REFERENCES Ticket(ID_ticket),
    FOREIGN KEY (CF_Developer) REFERENCES Developer(CF_developer)
);
