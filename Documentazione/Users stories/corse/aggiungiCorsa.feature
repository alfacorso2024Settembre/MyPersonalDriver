Feature: Aggiungi corsa
	Come Driver
	Voglio accettare una prenotazione
	Per fissare la corsa
	Background:
		Given Il Driver ha una prenotazione a suo nome da uno User
		And Il Driver è sulla pagina delle sue prenotazioni
		And User è un utente valido
		And Driver è un utente valido
	Scenario: La corsa viene aggiunta correttamente
		When Driver vede tutte le sue prenotazioni
		And Driver preme sul tasto "Accetta Prenotazione" sulla prenotazione "P43"
		Then Viene aggiunta la corsa "C101" all'elenco delle corse del Driver 
		And Viene aggiunta la corsa "C101" all'elenco delle corse dello User
	Scenario: La corsa non viene aggiunta correttamente perchè annullata
		When Driver vede tutte le sue prenotazioni
		And Driver preme sul tasto "Accetta Prenotazione" sulla prenotazione "P43"
		But User ha cancellato la prenotazione
		Then La corsa non viene aggiunta
		And Il Driver visualizza un messaggio "Errore, nessuna prenotazione presente"
	