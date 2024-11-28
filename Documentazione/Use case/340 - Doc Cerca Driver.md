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

| Step                  | Attore  | Azione                                                                                                       |
|-----------------------|---------|--------------------------------------------------------------------------------------------------------------|
| 1                     | Utente  | Seleziona un orario di prenotazione                                                                          |
| 2                     | Sistema | Inserisce l'orario nei filtri della ricerca                                                                  |
| 3                     | Utente  | Seleziona un luogo di prenotazione (posizione attuale o indirizzo scelto)                                    |
| 4                     | Sistema | Inserisce il luogo nei filtri della ricerca                                                                  |
| 5                     | Sistema | Visualizza la ricerca con i Driver disponibili nella fascia oraria fornita, a 3km massimo dal luogo inserito |
| 6                     | Utente  | Seleziona un Driver                                                                                          |
| 7                     | Sistema | Visualizza i dettagli del Driver                                                                             |
| 8                     | Utente  | Clicca su "Prenota"                                                                                          |
| 9                     | Sistema | Fa partire il caso d'uso "Prenota corsa"                                                                     |
| Termina il caso d'uso |


## Eccezione 5a

| Step                  | Attore  | Azione                                                                 |
|-----------------------|---------|------------------------------------------------------------------------|
| 5a.1                  | Sistema | Mostrerà una ricerca vuota con messaggio "nessun driver disponibile"   |
| Termina il caso d'uso |

### Note:
- Da capire se la posizione del driver si baserà sulla geolocalizzazione oppure sul cap inserito o sull'indirizzo fornito
- L'utente può verificare il profilo del driver prima di prenotarlo, vedere recensioni e affidabilità
- La mappa si aggiornerà ogni volta che l'utente rieffettuerà la ricerca, se il driver non è più disponibile non apparirà nella ricerca

# Components

- NAVBAR: generica di tutte le pagine
- FOOTER: generico di tutte le pagine, sarà presente un bottone al centro del footer grazie al quale sarà possibile visualizzare i dati dell'applicazione (email, numero di telefono, indirizzo, etc.)
- TABELLA: generico layout ma che al suo interno conterrà i dati relativi ai driver