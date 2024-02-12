INSERT INTO Software (ID_software, Nome, OS)
VALUES 
(1, 'Ricevimenti App', 'Web'),
(2, 'Gym Manager', 'Windows'),
(3, 'Product Search', 'Android');

INSERT INTO Releases (ID_software, Versione, Note, Data) 
VALUES
(1, '1.0', 'Prima versione rilasciata', '2022-01-15'),
(1, '1.0.1', 'Aggiunta di nuove funzionalità', '2023-03-10'),
(1, '1.0.3', 'Aggiunta di strumenti di fotoritocco', '2022-02-20'),
(1, '1.1.0', 'Primo rilascio stabile', '2022-01-01'),
(1, '1.1.1', 'Miglioramenti delle prestazioni', '2022-03-05'),
(2, '1.2.1', 'Miglioramenti statistiche', '2022-01-20'),
(2, '2.0.0', 'Aggiunta di estensioni per il supporto di vari linguaggi di programmazione', '2022-02-10'),
(2, '2.0.1', 'Bug fix sistema di tornello', '2022-04-15'),
(2, '2.2.1', 'Aggiornamento del sistema di debug', '2022-02-28'),
(2, '2.2.2', 'Miglioramenti delle funzionalità multiutente', '2022-03-20'),
(3, '1.2.1', 'Integrazione con ultima versione di Android', '2022-01-20'),
(3, '2.0.0', 'Miglioramenti grafici', '2022-02-10'),
(3, '2.0.1', 'Bug ricerca', '2022-04-15'),
(3, '2.2.1', 'Aggiornamento del sistema di debug', '2022-02-28'),
(3, '2.2.2', 'Miglioramenti delle funzionalità di ricerca', '2022-03-20');


INSERT INTO Ticket (ID_ticket, ID_software, Versione, Descrizione, Data_apertura, Data_chiusura)
VALUES
(1, 1, '1.0', 'Problema di visualizzazione del calendario', '2024-02-11', NULL),
(2, 1, '1.0.1', 'Errore durante il salvataggio dei dati', '2024-02-10', NULL),
(3, 1, '1.1.0', 'Problema di accesso al sistema', '2024-02-09', NULL),
(4, 1, '1.1.1', 'Miglioramenti delle prestazioni', '2024-02-08', '2024-02-10'),
(5, 2, '1.2.1', 'Errore durante il calcolo delle statistiche', '2024-02-07', NULL),
(6, 2, '2.0.0', 'Problema di integrazione con nuove estensioni', '2024-02-06', NULL),
(7, 2, '2.2.1', 'Bug nel sistema di debug', '2024-02-05', '2024-02-07'),
(8, 3, '1.2.1', 'Errore durante la ricerca di prodotti', '2024-02-04', NULL),
(9, 3, '2.0.0', 'Problema di rendering grafico', '2024-02-03', NULL),
(10, 3, '2.2.1', 'Miglioramenti del sistema di debug', '2024-02-02', '2024-02-04'),
(11, 1, '1.0.3', 'Problema di caricamento delle immagini', '2024-02-01', NULL),
(12, 1, '1.1.1', 'Errore durante l''esportazione dei dati', '2024-01-31', NULL),
(13, 1, '1.1.1', 'Risolto problema di accesso', '2024-01-30', '2024-02-02'),
(14, 2, '2.0.1', 'Errore durante l''aggiornamento del sistema', '2024-01-29', NULL),
(15, 2, '2.0.1', 'Problema di autenticazione', '2024-01-28', NULL),
(16, 2, '2.2.2', 'Errore durante la gestione degli utenti', '2024-01-27', NULL),
(17, 3, '2.0.1', 'Ricerca non restituisce risultati corretti', '2024-01-26', NULL),
(18, 3, '2.2.2', 'Errore durante il filtraggio dei risultati', '2024-01-25', NULL),
(19, 3, '2.2.2', 'Risolto problema di ricerca', '2024-01-24', '2024-01-26'),
(20, 1, '1.0', 'Risolto problema di sincronizzazione', '2024-01-23', '2024-01-25'),
(21, 1, '1.0.3', 'Problema di accesso ai dati', '2024-01-22', NULL),
(22, 1, '1.0.3', 'Errore durante l''invio di notifiche', '2024-01-21', NULL),
(23, 2, '2.0.0', 'Risolto problema di visualizzazione', '2024-01-20', '2024-01-22'),
(24, 2, '2.0.1', 'Problema di sincronizzazione con il server', '2024-01-19', NULL),
(25, 2, '2.2.2', 'Risolto problema di gestione degli utenti', '2024-01-18', '2024-01-20'),
(26, 3, '2.0.0','Risolto problema di accesso ai dati', '2024-01-17', '2024-01-19'),
(27, 3, '2.0.1', 'Problema di caching delle immagini', '2024-01-16', NULL),
(28, 3, '2.2.1', 'Errore durante il filtraggio dei risultati', '2024-01-15', NULL);


INSERT INTO Developer (CF_developer, Nome, Cognome)
VALUES 
('CDCFSCPN', 'Patrick', 'Nicolosi'),
('CDCFSCSL', 'Samuele', 'La Venia'),
('CDCFSCVD', 'Valerio', 'Di Stefano');


INSERT INTO Ticket_Assegnato (CF_Developer, ID_ticket)
VALUES
('CDCFSCPN', 1),
('CDCFSCSL', 1),
('CDCFSCPN', 2),
('CDCFSCSL', 2),
('CDCFSCSL', 3),
('CDCFSCPN', 4),
('CDCFSCPN', 5),
('CDCFSCSL', 5),
('CDCFSCSL', 6),
('CDCFSCVD', 6),
('CDCFSCVD', 7),
('CDCFSCSL', 7),
('CDCFSCPN', 8),
('CDCFSCSL', 8),
('CDCFSCVD', 8),
('CDCFSCPN', 9),
('CDCFSCSL', 9),
('CDCFSCVD', 9),
('CDCFSCPN', 10),
('CDCFSCSL', 10),
('CDCFSCVD', 10),
('CDCFSCSL', 11),
('CDCFSCPN', 12),
('CDCFSCSL', 12),
('CDCFSCVD', 13),
('CDCFSCPN', 14),
('CDCFSCSL', 14),
('CDCFSCPN', 15),
('CDCFSCVD', 15),
('CDCFSCSL', 16),
('CDCFSCPN', 16),
('CDCFSCSL', 17),
('CDCFSCPN', 17),
('CDCFSCSL', 18),
('CDCFSCPN', 18),
('CDCFSCSL', 19),
('CDCFSCPN', 19),
('CDCFSCSL', 20),
('CDCFSCPN', 20),
('CDCFSCSL', 22),
('CDCFSCPN', 22),
('CDCFSCSL', 23),
('CDCFSCPN', 23),
('CDCFSCSL', 24),
('CDCFSCPN', 24),
('CDCFSCSL', 25),
('CDCFSCPN', 25),
('CDCFSCPN', 27),
('CDCFSCSL', 27),
('CDCFSCVD', 27),
('CDCFSCSL', 28),
('CDCFSCPN', 28);


