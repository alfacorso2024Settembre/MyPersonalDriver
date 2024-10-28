# Use Case: Prenota Corsa

## Attore primario: 
Utente

## Parti Interessate: 
Utente, Driver

## Descrizione: 
L'utente desidera prenotare un Driver disponibile dalla ricerca precedentemente fatta.

## Precondizioni: 
- L'utente deve essere registrato e autenticato nel sistema
- L'utente deve aver precedentemente ricercato un Driver e la ricerca deve aver prodotto almeno 1 risultato

## Scenario Base:
- utente: seleziona un Driver e lo Prenota
- sistema: manda un messaggio di conferma

## Scenario 1:

| Step | Attore |Sistema |
|---|--------|-------|
| 1 | L'utente seleziona un Driver e lo Prenota | Invia la richiesta al Driver |
| 2 | Il driver accetta la richiesta | Invia la conferma all'utente e la prenotazione viene registrata|
| 3 | Il sistema fa partire il pagamento | La prenotazione viene registrata|

## Eccezione 1.a:

| Step | Attore |Sistema |
|---|--------|-------|
| 1 | L'utente seleziona un Driver e lo Prenota | Il Driver accetta o rimuove la sua disponibilità in quel momento|
|  | viene inviato un messaggio di errrore e l'utente può cercare altri Driver| |

## Scenario 2:

| Step | Attore |Sistema |
|---|--------|-------|
| 1 | L'utente seleziona un Driver e lo Prenota | Invia la richiesta al Driver |
| 2 | Il driver rifiuta la richiesta | Invia la conferma all'utente e l'utente può cercare altri Driver|

## Eccezione 1.a:

| Step | Attore |Sistema |
|---|--------|-------|
| 1 | L'utente seleziona un Driver e lo Prenota | Il Driver accetta o rimuove la sua disponibilità in quel momento|
|  | viene inviato un messaggio di errrore e l'utente può cercare altri Driver| |