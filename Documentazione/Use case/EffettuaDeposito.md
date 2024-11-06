# Effettua Deposito

## Attori:
User 

## Descrizione:
L'utente sta prenotando una corsa ed effettua un deposito sull'applicazione

## Precondizioni:
- L'utente deve essere registrato e autenticato.
- L'utente sta effettuando una prenotazione.

## Scenario base:
| Passo | Attore                  | Azione                                         |
|:-----:|:------------------------|:-----------------------------------------------|
|   1   | Sistema                 | mostra la schemata per effettuare il pagamento |
|   2   | Utente                  | seleziona "deposita"                           |
|   3   | Sistema                 | riceve deposito                                |
|   4   | Sistema                 | conferma prenotazione                          |
|       | *Termina il caso d'uso* |                                                |

## Eccezione 3:
| Passo | Attore                  | Azione                                              |
|:-----:|:------------------------|:----------------------------------------------------|
|   3   | Sistema                 | manda messaggio all'utente di credito insufficiente |
|   4   | Sistema                 | stato della corsa modificato in "annullata"         |
|       | *Termina il caso d'uso* |                                                     |
