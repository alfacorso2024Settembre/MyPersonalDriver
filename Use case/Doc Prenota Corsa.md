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
- L'utente clicca su prenota

## Scenario base:

| Step | Attore |Sistema |
|---|--------|-------|
| 1 | Il driver accetta la richiesta | Invia la conferma all'utente|
| 2 | Il sistema fa partire il pagamento | La prenotazione viene registrata|

## Variante 1:

| Step | Attore |Sistema |
|---|--------|-------|
| 1 | Il driver rifiuta la richiesta | Invia la conferma all'utente|
|  | Se desidera l'utente può cercare altri driver disponibili dal cerca Driver | |

## Eccezione 1.a:

| Step | Attore |Sistema |
|---|--------|-------|
| 1 | L'utente seleziona un Driver e lo Prenota | Il Driver accetta o rimuove la sua disponibilità in quel momento|
|  | viene inviato un messaggio di errrore e l'utente può cercare altri Driver| |