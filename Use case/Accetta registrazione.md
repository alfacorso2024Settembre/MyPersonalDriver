# Accetta registrazione

## Attore primario 
Admin

## Parti interessate
Utente (user o driver)

## Descrizione
L'amministratore deve verificare i dati del nuovo utente che si vuole registrare alla piattafroma e deve accettarla in modo da renderla effettiva.

## Pre-condizioni
L'attore deve essere autenticato come admin della piattaforma e l'utente da aggiungere deve aver inviato una richiesta di registrazione.

## Post-condizioni
Il nuovo utente è registrato sulla piattaforma e può accedere ai servizi.


## Scenario principale
1) utente: seleziona "visualizza registrazioni da accettare"
2) sistema: restituisce l'elenco delle registrazioni da verificare
3) utente: sceglie richiesta da visualizzare 
4) sistema: mostra pagina con dati da verificare
5) utente: verifica che utente non sia stato eliminato in precedenza
6) sistema: fornisce risposta 
7) sistema: controlla formato corretto email (* vedi UC registrazione) 
8) utente: accetta iscrizione del nuovo utente
9) sistema: modifica stato dell'utente in "accettato"
10) sistema: registra il nuovo utente
10) sistema: manda email di conferma registrazione \
*Termina il caso d'uso*


## Scenario alternativo A
8) utente: sospende la registrazione 
9) utente: segnala la motivazione e i dati che l'utente dovrà fornire per ulteriori accertamenti.
10) sistema: modifica stato dell'utente in "in sospeso"
11) sistema: manda email all'utente con motivazione della sospensione e l'elenco dei dati richiesti.\
*Termina il caso d'uso*

## Scenario alternativo B
8) utente: rifiuta iscrizione del nuovo utente.
9) sistema: manda email di registrazione fallita all'utente.\
*Termina il caso d'uso*



