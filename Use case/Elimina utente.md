# Elimina utente

## Attori
Utente (user o driver) 

## Descrizione
L'utente desidera eliminare il proprio profilo dalla piattaforma.

## Pre-condizioni
L'utente deve aver effettuato il login all'interno della piattaforma.

## Post-condizioni
Il profilo dell'utente è stato cancellato dalla piattaforma.


## Scenario principale
1) utente: va sul proprio profilo
2) sistema: mostra la pagina delle impostazioni
3) utente: va su "elimina profilo"
4) sistema: richiesta di conferma di eliminazione profilo
5) utente: conferma eliminazione
6) sistema: messaggio di conferma eliminazione
*Termina il caso d'uso*

### Eccezione 4.a
sistema: impossibile eliminare il profilo perche gia' eliminato da admin.
*Termina il caso d'uso*

### Eccezione 4.b
sistema: impossibile eliminare il profilo con un rimborso in corso.
*Termina il caso d'uso*

### Eccezione 4.c
sistema: impossibile eliminare il profilo con una corsa in corso.
*Termina il caso d'uso*


## Scenario alternativo A
5) utente: annulla eliminazione
6) sistema: mostra la pagina delle impostazioni
*Termina il caso d'uso*
