# Elimina account

## Attore primario
Admin

## Parti interessate
Utente (user o driver)

## Descrizione
L'amministratore vuole eliminare un utente in seguito ad una segnalazione grave.

## Precondizioni
L'attore primario deve essere autenticato come admin della piattaforma e l'utente da eliminare deve aver ricevuto almeno una segnalazione.

## Post-condizioni
L'utente viene eliminato dalla piattaforma.

## Scenario principale
1) utente: cerca l'utente da eliminare
2) sistema: mostra il profilo dell'utente da eliminare
3) utente: vai su "elimina profilo"
4) sistema: richiesta di conferma di eliminazione profilo
5) utente: conferma eliminazione
6) sistema: messaggio di conferma eliminazione
7) sistema: email all'utente eliminato
*Termina il caso d'uso*

### Eccezione 4.a
sistema: impossibile eliminare il profilo perche gia' eliminato dall'utente.
*Termina il caso d'uso*

### Eccezione 4.b
sistema: impossibile eliminare il profilo con una corsa in corso.
*Termina il caso d'uso*

### Eccezione 4.c
sistema: impossibile eliminare il profilo con un rimborso in corso.
*Termina il caso d'uso*


## Scenario alternativo A
5) utente: annulla eliminazione
6) sistema: mostra il profilo dell'utente
*Termina il caso d'uso*


