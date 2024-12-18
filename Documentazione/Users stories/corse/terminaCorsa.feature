Feature: Termina
	Come utente registrato
	Voglio terminare la mia corsa
	Per finire il servizio
	Background:
		Given L'utente "Driver" è sulla sua pagina delle corse
		And L'utente "Driver" è loggato
		And L'utente "User" è loggato
	Scenario: Corsa terminata correttamente
		Given L'utente "User" ha premuto il tasto "Termina corsa" per la corsa "C34"
		And Lo stato della corsa è "Waiting"
		When L'utente "Driver" preme il tasto "Termina corsa" per la corsa "C34"
		Then Corsa termina 
		And L'utente "User" visualizza un messaggio di conferma "Corsa terminata"
		And L'utente "Driver" visualizza un messaggio di conferma "Corsa terminata"
		And Lo stato della corsa viene aggiornata in "Completed"
	Scenario: Corsa non terminata
		Given Lo stato della corsa è "Active"
		When L'utente "Driver" preme il tasto "Termina corsa" per la corsa "C89"
		But L'utente "User" non ha premuto "Termina corsa" per la corsa "C89"
		Then L'utente "Driver" visualizza il messaggio "Attendere l'utente "User""
		And Corsa non termina
		And Lo stato della corsa viene aggiornata in "Waiting"