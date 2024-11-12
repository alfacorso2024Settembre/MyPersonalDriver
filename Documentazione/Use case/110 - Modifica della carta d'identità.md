# Modifica della carta d'identità
## Attore primario
User registrato

## Parti interessate
Admin

## Descrizione:  
L’utente accede alla piattaforma My Personal Driver e modifica la carta d'identità. A seguito di modifiche, 
è richiesto di caricare nuovamente la carta d'identità, la quale sarà verificata manualmente dall'admin.

## Precondizioni: 
L'utente deve essere registrato e autenticato.

## Scenario Base - Modifica della carta d'identità

| Passo | Attore                  | Azione                                                                                           | 
|:-----:|:------------------------|:-------------------------------------------------------------------------------------------------| 
|   1   | Utente                  | accede al proprio account sulla piattaforma My Personal Driver.                                  | 
|   2   | Utente                  | seleziona l'opzione "Modifica Account"                                                           |
|   3   | Sistema                 | mostra la pagina del profilo dell'utente                                                         | 
|   4   | Utente                  | seleziona "modifica dati personali"                                                              |
|   5   | Utente                  | seleziona "modifica carta d'identità"                                                            |
|   6   | Sistema                 | mostra la pagina con il form per il caricamento dei nuovi dati                                   |
|   7   | Utente                  | modifica la data di scadenza della carta d'identità                                              |
|   8   | Sistema                 | richiede di inserire il nuovo numero della carta d'identità                                      |
|   9   | Utente                  | inserisce il numero della nuova carta d'identità                                                 |
|  10   | Sistema                 | verifica che il formato sia corretto                                                             |
|  11   | Sistema                 | richiede di inserire la data di scadenza                                                         |
|  12   | Utente                  | inserisce la data di scadenza                                                                    |
|  13   | Sistema                 | verifica che il formato sia corretto                                                             |
|  14   | Sistema                 | richiede di caricare la foto del documento                                                       |
|  15   | Utente                  | carica la foto                                                                                   |
|  16   | Sistema                 | verifica che il formato dell'immagine sia corretto                                               |
|  17   | Sistema                 | carica i nuovi dati inseriti                                                                     |
|  18   | Sistema                 | modifica lo stato del documento in "sospeso"                                                     |
|  19   | Sistema                 | informa l'utente "caricamento avvenuto, documenti in attesa di conferma da parte dell'admin"     |
|       | *Termina il caso d'uso* |                                                                                                  |

### Eccezione 7.1
| Passo | Attore                  | Azione                                                | 
|:-----:|:------------------------|:------------------------------------------------------| 
|   7   | Sistema                 | ERRORE: i dati inseriti non sono nel formato corretto |
|       | *Ritorna al passo 3*    |                                                       |

### Eccezione 9.1
| Passo | Attore               | Azione                                | 
|:-----:|:---------------------|:--------------------------------------| 
|   9   | Sistema              | ERRORE: formato dei dati non corretto |
|       | *Ritorna al passo 7* |                                       |

### Eccezione 12.1
| Passo | Attore                | Azione                                  | 
|:-----:|:----------------------|:----------------------------------------| 
|  12   | Sistema               | ERRORE: formato della data non corretto |
|       | *Ritorna al passo 10* |                                         |

### Eccezione 15.1
| Passo | Attore                | Azione                                       | 
|:-----:|:----------------------|:---------------------------------------------| 
|  15   | Sistema               | ERRORE: formato dell'immagine non supportato |
|       | *Ritorna al passo 13* |                                              |