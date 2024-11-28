# Use Case: Prenota Corsa

## Attore primario: 
Utente

## Parti Interessate: 
Utente, Driver

## Descrizione: 
L'utente desidera prenotare un Driver disponibile dalla ricerca precedentemente fatta.

## Precondizioni: 
- L'utente deve essere registrato e autenticato nel sistema
- L'utente deve avere almeno una macchina registrata con assicurazione non scaduta
- L'utente deve aver precedentemente ricercato un Driver e la ricerca deve aver prodotto almeno 1 risultato
- L'utente clicca su prenota

## Scenario base:

| Step | Attore  | Azione                                          |
|------|---------|-------------------------------------------------|
| 1    | Utente  | Sceglie la macchina che il driver dovrà guidare |
| 2    | Sistema | Verifica che l'assicurazione sia ancora valida  |
| 3    | Sistema | Partirà il caso d'uso "Verifica Documenti"      |
| 4    | Utente  | Seleziona un Driver disponibile per la corsa    |
| 5    | Sistema | Invia una notifica e una email al Driver        |
| 6    | Driver  | Accetta la richiesta                            |
| 7    | Sistema | Partirà il caso d'uso "Accetta Prenotazione"    |
| 8    | Sistema | Partirà il caso d'uso "Effettua Deposito"       |
|  Termina il caso d'uso |

## Estensione 5a:

| Step | Attore  | Sistema                                                                                        |
|------|---------|------------------------------------------------------------------------------------------------|
| 5a.1 | Driver  | Rifiuta la richiesta                                                                           |
| 5a.2 | Sistema | Partirà il caso d'uso "Accetta Prenotazione"                                                   |
| 5a.3 | Sistema | Invia una notifica all'Utente indicandogli che il Driver selezionato non ha accettato la corsa |
| 5a.4 | Sistema | Partirà il caso d'uso "Cerca Driver"                                                           |
|  Termina il caso d'uso |

## Eccezione 5a:

| Step | Attore  | Azioni                                                                            |
|------|---------|-----------------------------------------------------------------------------------|
| 5a.1 | Driver  | Accetta un'altra corsa contemporaneamente                                         |
| 5a.2 | Sistema | Invia un messaggio di errore all'utente indicandogli che qualcosa è andato storto |
| 5a.3 | Sistema | Partirà il caso d'uso "Cerca Driver"                                              |
|  Termina il caso d'uso |

## Eccezione 5b:

| Step                  | Attore  | Azioni                                                                             |
|-----------------------|---------|------------------------------------------------------------------------------------|
| 5b.1                  | Driver  | Modifica contemporaneamente il proprio stato da Disponibile a non Disponibile      |
| 5b.2                  | Sistema | Invia un messaggio di errore all'utente indicandogli che qualcosa è andato storto  |
| 5b.3                  | Sistema | Partirà il caso d'uso "Cerca Driver"                                               |
| Termina il caso d'uso |

# Components

- NAVBAR: generica di tutte le pagine
- FOOTER: generico di tutte le pagine, sarà presente un bottone al centro del footer grazie al quale sarà possibile visualizzare i dati dell'applicazione (email, numero di telefono, indirizzo, etc.)
- TABELLA: generico layout ma che al suo interno conterrà i dati relativi alle prenotazioni
- POPUP: con all'interno il componente cerca driver 