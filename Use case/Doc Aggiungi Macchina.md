# Use Case: Aggiungi Macchina

## Attore primario: 
Utente

## Parti Interessate: 
Utente

## Descrizione: 
L'utente desidera registrare un veicolo che il driver giuderà.

## Precondizioni: 
- L'utente deve essere registrato e autenticato nel sistema.
- L'utente deve possedere un veicolo.

## Scenario base:

| Step | Attore |Sistema |
|---|--------|-------|
| 1 | L'utente inserirà i dati della macchina che il driver dovrà guidare | Verificherà che i dati in input siano formalmente corretti|
|   | La macchina verrà aggiunta al profilo dell'utente|  |
| 2 | L'utente invierà le foto dell'assicurazione| Use case "verifica documenti"|

## Scenario alternativo 1:

l'utente non invia la documentazione legale

| Step | Attore |Sistema |
|---|--------|-------|
| 1 | L'utente inserirà i dati della macchina che il driver dovrà guidare | Verificherà che i dati in input siano formalmente corretti|
|   | La macchina verrà aggiunta al profilo dell'utente|  |
|   | La macchina non potrà essere utilizzata in una prenotazione finchè non verranno inseriti i dati dell'assicurazione| |