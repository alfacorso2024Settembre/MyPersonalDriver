# Accetta registrazione

## Attori
Admin

## Descrizione
L'amministratore deve verificare i dati del nuovo utente che si vuole registrare alla piattafroma e deve accettarla in modo da renderla effettiva.

## Precondizoni
L'attore deve essere autenticato come admin della piattaforma e l'utente da aggiungere deve aver inviato una richiesta di registrazione.

## Scenario base
1) utente: sceglie richiesta da visualizzare 
2) sistema: mostra pagina con dati da verificare
3) utente: verifica i dati e accetta iscrizione del nuovo utente
4) sistema: registra il nuovo utente e manda email di conferma registrazione 

## Scenario alternativo A
1) utente: sceglie richiesta da visualizzare 
2) sistema: mostra pagina con dati da verificare
3) utente: verifica i dati e rifiuta iscrizione del nuovo utente
4) sistema: manda email di registrazione fallita all'utente

