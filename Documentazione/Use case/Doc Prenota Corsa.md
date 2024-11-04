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

| Step | Attore                             | Azione                                          |
|------|------------------------------------|-------------------------------------------------|
| 1    | Utente                             | Sceglie la macchina che il driver dovrà guidare |
| 2    | Sistema                            | Verifica che l'assicurazione sia ancora valida  |
| 3    | Sistema                            | Partirà il caso d'uso "Verifica Documenti"      |
| 4    | Driver                             | Accetta la richiesta                            |
| 5    | Sistema                            | Partirà il caso d'uso "Accetta Prenotazione"    |
| 6    | Sistema                            | Partirà il caso d'uso "Effettua Deposito"       |

## Estensione 4a:

| Step | Attore  | Sistema                                                                                        |
|------|---------|------------------------------------------------------------------------------------------------|
| 4a.1 | Driver  | Rifiuta la richiesta                                                                           |
| 4a.2 | Sistema | Partirà il caso d'uso "Accetta Prenotazione"                                                   |
| 4a.3 | Sistema | Invia una notifica all'Utente indicandogli che il Druver selezionato non ha accettato la corsa |
||||


| Step  | Attore | Sistema                                         |
|-------|--------|-------------------------------------------------|
| 1     | Il driver  | Partirà il caso d'uso "Accetta Prenotazione"    |
| 2     | Se desidera l'utente può cercare altri driver disponibili dal cerca Driver | Partirà il caso d'uso "Cerca Driver"|

## Eccezione 1.a:

| Step | Attore                                                                     | Sistema                                                           |
|------|----------------------------------------------------------------------------|-------------------------------------------------------------------|
| 1    | L'utente seleziona un Driver e lo Prenota                                  | Il Driver accetta o rimuove la sua disponibilità in quel momento  |
|      | viene inviato un messaggio di errrore e l'utente può cercare altri Driver  |                                                                   |
