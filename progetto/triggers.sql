-- Trigger operazione 4
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

-- Trigger operazione 5
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

-- Trigger operazione 11
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