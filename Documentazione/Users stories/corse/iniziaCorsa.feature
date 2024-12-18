Feature: Inizia Corsa
	Come Utente registrato
	Voglio iniziare la corsa
	Per iniziare il servizio
	Background:
		Given L'utente "Driver" è sulla sua pagina delle corse
		And L'utente "Driver" è loggato
		And L'utente "User" è loggato
	Scenario: Corsa inizia correttamente
		Given L'utente "User" ha premuto il tasto "Inizia corsa" per la corsa "C34"
		And Lo stato della corsa è "Waiting"
		When L'utente "Driver" preme il tasto "Inizia corsa" per la corsa "C34"
		Then Corsa inizia 
		And L'utente "User" visualizza un messaggio di conferma "Corsa iniziata"
		And L'utente "Driver" visualizza un messaggio di conferma "Corsa iniziata"
		And Lo stato della corsa viene aggiornata in "Active"
	Scenario: Corsa non iniziata
		Given Lo stato della corsa è "Pending"
		When L'utente "Driver" preme il tasto "Inizia corsa" per la corsa "C89"
		But L'utente "User" non ha premuto "Inizia corsa" per la corsa "C89"
		Then L'utente "Driver" visualizza il messaggio "Attendere, l'utente "User" non è ancora pronto"
		And Corsa non inizia
		And Lo stato della corsa viene aggiornata in "Waiting"
	Scenario: Corsa cancellata 
		When L'utente "Driver" preme il tasto "Cancella corsa" per la corsa "C78"
		And L'utente "Driver" visualizza popup di conferma
		And L'utente "Driver" preme il tasto "Conferma"
		Then La corsa è cancellata
		And L'utente "User" visualizza il messaggio "Corsa C78 annullata dal Driver"
		And Lo stato della corsa si aggiorna in "Cancelled"
	