Feature: Vedi Corse
	Come utente registrato
	Voglio vedere le mie corse
	Per gestire le mie attività
	Background:
		Given L'utente è loggato
	Scenario: Pagina delle corse
		Given L'utente ha effettuato delle corse o le deve effettuare
		When L'utente preme la voce "Rides" del menù
		Then L'utente viene reindirizzato alla propria pagina delle corse
		And L'utente visualizza una tabella con l'elenco delle sue corse passate, presenti e future
		
	Scenario: Pagina vuota
		Given L'utente non ha effettuato corse passate, in corso, o pianificate
		When L'utente preme la voce "Rides" del menù
		Then L'utente viene reindirizzato alla propria pagina delle corse
		And L'utente visualizza la pagina senza una tabella
	