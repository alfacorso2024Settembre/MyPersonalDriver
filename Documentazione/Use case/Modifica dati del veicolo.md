# Modifica dati del veicolo
## Attore primario
User registrato

## Parti interessate
Admin

## Descrizione:  
L’utente accede alla piattaforma My Personal Driver e modifica i dati relativi al veicolo. A seguito di modifiche, 
è richiesto di caricare nuovamente i documenti necessari, i quali saranno verificati manualmente dall'admin.

## Precondizioni: 
L'utente deve essere registrato e autenticato.

## Scenario Base - Modifica dei dati del veicolo
| Passo | Attore                  | Azione                                                          | 
|:-----:|:------------------------|:----------------------------------------------------------------| 
|   1   | Utente                  | accede al proprio account sulla piattaforma My Personal Driver. | 
|   2   | Utente                  | seleziona l'opzione "Modifica Account"                          |
|   3   | Sistema                 | mostra la pagina del profilo dell'utente                        | 
|   4   | Utente                  | seleziona "modifica dati del veicolo"                           |
|   5   | Sistema                 | mostra la pagina con il form per il caricamento dei nuovi dati  |
|   6   | Utente                  | inserisce il nome del nuovo proprietario della macchina         |
|   7   | Sistema                 | verifica che il formato sia corretto                            |
|   8   | Sistema                 | richiede l'inserimento della foto dell'assicurazione            |
|   9   | Utente                  | carica la foto                                                  |
|  10   | Sistema                 | verifica la validità del formato                                |
|  11   | Sistema                 | carica la modifica                                              |
|  12   | Sistema                 | modifica lo stato del documento in "sospeso"                    |
|  13   | Sistema                 | comunica la conferma della modifica                             |
|       | *Termina il caso d'uso* |                                                                 |

### Eccezione 7.1
| Passo | Attore               | Azione                                         | 
|:-----:|:---------------------|:-----------------------------------------------| 
|   7   | Sistema              | ERRORE: formato dei dati inseriti non corretto |
|       | *Ritorna al passo 6* |                                                |

### Eccezione 10.1
| Passo | Attore               | Azione                                    | 
|:-----:|:---------------------|:------------------------------------------| 
|  10   | Sistema              | ERRORE: formato della foto non supportato |
|       | *Ritorna al passo 9* |                                           |