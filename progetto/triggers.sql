-- Trigger Op.4 (quando viene assegnato un ticket passa allo stato "Aperto")
DELIMITER //
CREATE TRIGGER aggiorna_stato_ticket
AFTER INSERT ON Ticket_Assegnato
FOR EACH ROW
BEGIN
    UPDATE Ticket
    SET Stato = 'Aperto'
    WHERE ID_ticket = NEW.ID_ticket;
END//
DELIMITER ;

-- Trigger Op.5 (quando un ticket viene chiuso vengono eliminate tutte le assegnazioni in Ticket_assegnati di quel ticket)
DELIMITER //
CREATE TRIGGER elimina_assegnazioni
AFTER UPDATE ON Ticket
FOR EACH ROW
BEGIN
    IF NEW.Stato = 'Chiuso' THEN
        DELETE FROM Ticket_Assegnato WHERE ID_ticket = OLD.ID_ticket;
    END IF;
END//
DELIMITER ;

-- Trigger Op.11 (elimina tutti i ticket assegnati al developer. Se quel ticket è senza developer lo passa ad uno stato "Non assegnato")
DELIMITER //
CREATE TRIGGER elimina_developer
BEFORE DELETE ON Developer
FOR EACH ROW
BEGIN
    DELETE FROM Ticket_Assegnato WHERE CF_Developer = OLD.CF_developer;
    UPDATE Ticket
    SET Stato = 'Non assegnato'
    WHERE NOT EXISTS (SELECT * FROM Ticket_Assegnato TA WHERE TA.ID_ticket = Ticket.ID_ticket);
END//
DELIMITER ;
