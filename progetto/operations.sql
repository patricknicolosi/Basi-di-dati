-- Op.1 Aggiungere un nuovo software 
INSERT INTO Software (ID_software, Nome, OS)
VALUES
(4, 'SuperDash', 'Windows');

-- Op.2 Aggiungere una nuova release 
INSERT INTO Releases (ID_software, Versione, Note, Data) 
VALUES
(4, '1.0', 'Prima versione rilasciata', '2024-01-15');

-- Op.3 Aprire un nuovo ticket 
INSERT INTO Ticket (ID_ticket, ID_software, Versione, Stato, Descrizione, Data_apertura, Data_chiusura)
VALUES 
(29, 4, '1.0', 'Non Assegnato', 'Problema di visualizzazione grafico', '2024-02-12', NULL),

-- Op.4 Assegnare un ticket ad un developer (usa trigger aggiorna_stato_ticket)
INSERT INTO Ticket_Assegnato (CF_Developer, ID_ticket)
VALUES
('CDCFSCPN', 29);

-- Op.5 Chiudere un issue (usa trigger elimina_assegnazioni)
UPDATE Ticket 
SET Stato = 'Chiuso', Data_chiusura = CURRENT_DATE 
WHERE ID_ticket = 1;

-- Op.6 Visualizzare tutte le release dell’applicativo “Ricevimenti App” ordinate per data 
SELECT R.*
FROM Releases R
JOIN Software S
ON R.ID_software = S.ID_software 
WHERE S.Nome = 'Ricevimenti App'
ORDER BY R.Data;

-- Op.7 Visualizzare l’ultima release di ogni applicativo  
SELECT R.*
FROM Releases R
JOIN Software S
ON R.ID_software = S.ID_software 
WHERE R.Data = (SELECT MAX(Data) FROM Releases R1 WHERE R1.ID_software = R.ID_software);

-- Op.8 Visualizzare tutte le issue aperte di una release ordinate per date di apertura 
SELECT * 
FROM Ticket T 
WHERE T.Stato = 'Aperto' AND T.ID_software = 2 AND T.Versione = '2.0.1'
ORDER BY T.Data_apertura;

-- Op.9 Visualizzare tutte le issue chiuse di una release ordinate per date di chiusura 
SELECT *
FROM Ticket T
WHERE T.Stato = 'Chiuso' AND T.ID_software = 3 AND T.Versione = '2.2.2'
ORDER BY T.Data_apertura;


-- Op.10 Aggiungere un developer
INSERT INTO Developer (CF_developer, Nome, Cognome)
VALUES 
('CDCFSCWN', 'William', 'Nicolosi');

-- Op.11 Eliminare un developer (usa trigger elimina_developer)
DELETE FROM Developer WHERE CF_developer = 'CDCFSCPN';

-- Op.12 Visualizzare tutte le issue non assegnate di una release ordinate per date di  apertura 
SELECT * 
FROM Ticket T 
WHERE T.Stato = 'Non Assegnato' AND T.ID_software = 1 AND T.Versione = '1.0.3'
ORDER BY T.Data_apertura;