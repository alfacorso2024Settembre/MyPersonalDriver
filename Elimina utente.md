# Elimina utente

## Attori
Utente (user o driver) autenticato

## Descrizione
L'utente desidera eliminare il proprio profilo (e i relativi dati) dalla piattaforma.

## Precondizoni
L'utente deve essere registrato, quindi la sua registrazione deve essere stata accettata, e deve aver effettuato il login all'interno della piattaforma.

## Scenario base
1) utente: va sul proprio profilo
2) sistema: mostra la pagina delle impostazioni
3) utente: va su elimina profilo
4) sistema: richiesta di conferma di eliminazione profilo
5) utente: conferma eliminazione
6) sistema: messaggio di conferma eliminazione


### Eccezione 4.1
sistema: impossibile eliminare il profilo perche gia' eliminato da admin.

### Eccezione 4.2
sistema: (se utente è un user) impossibile eliminare il profilo con un rimborso in corso.

### Eccezione 4.3
sistema: impossibile eliminare il profilo con una corsa in corso.

