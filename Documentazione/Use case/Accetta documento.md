# Accetta documento
## Attore primario 
Admin

## Parti interessate
Utente (user o driver)

## Descrizione
L'amministratore deve verificare i documenti caricati dall'utente.

## Pre-condizioni
L'attore deve essere autenticato come admin della piattaforma.

## Post-condizioni
Il documento dell'utente viene accettato e può accedere ai servizi.


<!-- TODO: variante con documenti diversi -->
## Scenario principale
| Passo | Attore                  | Azione                                                      | 
|:-----:|:------------------------|:------------------------------------------------------------| 
|   1   | Admin                   | seleziona "visualizza documenti da accettare"               | 
|   2   | Sistema                 | restituisce l'elenco delle richieste da verificare          |
|   3   | Admin                   | sceglie richiesta da visualizzare                           | 
|   4   | Sistema                 | mostra pagina con dati da verificare                        |
|   5   | Admin                   | controlla formato corretto email (* vedi UC reg istrazione) | 
|   6   | Sistema                 | fornisce risposta                                           |
|   7   | Admin                   | accetta il documento dell' utente                           |
|   8   | Sistema                 | carica il nuovo documento                                   |
|   9   | Sistema                 | manda email di conferma                                     |
|       | *Termina il caso d'uso* |                                                             |

### Eccezione 6.1
| Passo | Attore                  | Azione                             | 
|:-----:|:------------------------|:-----------------------------------| 
|   6   | Sistema                 | ERRORE: formato email non corretto |
|       | *Termina il caso d'uso* |                                    |

### Eccezione 8.1
| Passo | Attore                  | Azione                                      | 
|:-----:|:------------------------|:--------------------------------------------| 
|   8   | Sistema                 | ERRORE: profilo utente non piu' disponibile |
|       | *Termina il caso d'uso* |                                             |

## Scenario alternativo A
| Passo | Attore                     | Azione                 | 
|:-----:|:---------------------------|:-----------------------| 
|   7   | Admin                      | rifiuta il documento   | 
|   8   | Admin                      | segnala la motivazione |
|   9   | Sistema                    | manda email all'utente | 
|       | *Termina il caso d'uso*    |                        |





