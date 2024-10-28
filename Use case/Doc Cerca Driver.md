# Use Case: Cerca Driver

## Attore primario: 
Utente

## Parti Interessate: 
Utente, Driver

## Descrizione: 
L'utente ricerca i Driver disponibili nella sua zona per poter prenotare la corsa in seguito.

## Precondizioni: 
- L'utente deve essere registrato e autenticato nel sistema

## Scenario Base:

| Step | Attore |Sistema |
|---|--------|-------|
| 1 | L'utente seleziona un orario di prenotazione| Inserisce l'orario nei filtri della ricerca |
| 2 | L'utente seleziona un luogo di prenotazione (posizione attuale o indirizzo scelto)| Inserisce il luogo nei filtri della ricerca |
| 3 | Visualizza la ricerca con i i Driver disponibili nella fascia oraria fornita e a 3km dal luogo inserito| Fornisce le informazioni necessarie  |
| 4 | L'utente seleziona un Driver dai risultati della ricerca e clicca "Prenota" | Partirà il caso d'uso "Prenota corsa" |

## Scenario Alternativo:

- se nessun driver è disponibile

| step | attore |Descrizione |
|---|--------|-------|
| 1 | Utente | Ricerca un Driver |
| 2 | Sistema | Mostrerà una ricerca vuota con messaggio "nessun driver disponibile"|
| 3 | Utente | Non può prenotare ma può cambiare orario e/o posizione e riprovare ad effettuare la ricerca |

### Note:
- Da capire se la posizione del driver si baserà sulla geolocalizzazione oppure sul cap inserito o sull'indirizzo fornito
- L'utente può verificare il profilo del driver prima di prenotarlo, vedere recensioni e affidabilità
- La mappa si aggiornerà ogni volta che l'utente rieffettuerà la ricerca, se il driver non è più disponibile non apparirà nella ricerca