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