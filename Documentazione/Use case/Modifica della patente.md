# Modifica della patente
## Attore primario
User registrato

## Parti interessate
Admin

## Descrizione:  
L’utente accede alla piattaforma My Personal Driver e modifica la patente. A seguito di modifiche, 
è richiesto di caricare nuovamente la patente, la quale sarà verificata manualmente dall'admin.

## Precondizioni: 
L'utente deve essere registrato e autenticato.

## Scenario Base - Modifica della patente

| Passo | Attore                  | Azione                                                                                           | 
|:-----:|:------------------------|:-------------------------------------------------------------------------------------------------| 
|   1   | Utente                  | accede al proprio account sulla piattaforma My Personal Driver.                                  | 
|   2   | Utente                  | seleziona l'opzione "Modifica Account"                                                           |
|   3   | Sistema                 | mostra la pagina del profilo dell'utente                                                         |
|   4   | Utente                  | seleziona "modifica patente"                                                                     |
|   5   | Sistema                 | mostra la pagina con il form per il caricamento dei nuovi dati                                   |
|   6   | Utente                  | modifica la data di scadenza della patente                                                       |
|   7   | Sistema                 | verifica che il formato sia corretto                                                             |
|   8   | Sistema                 | richiede di caricare la foto del documento                                                       |
|   9   | Utente                  | carica la foto                                                                                   |
|  10   | Sistema                 | verifica che il formato dell'immagine sia corretto                                               |
|  11   | Sistema                 | carica i nuovi dati inseriti                                                                     |
|  12   | Sistema                 | modifica lo stato del documento in "sospeso"                                                     |
|  13   | Sistema                 | informa l'utente "caricamento avvenuto, documenti in attesa di conferma da parte dell'admin"     |
|       | *Termina il caso d'uso* |                                                                                                  |


### Eccezione 7.1
| Passo | Attore               | Azione                                  | 
|:-----:|:---------------------|:----------------------------------------| 
|   7   | Sistema              | ERRORE: formato della data non corretto |
|       | *Ritorna al passo 5* |                                         |

### Eccezione 12.1
| Passo | Attore               | Azione                                     | 
|:-----:|:---------------------|:-------------------------------------------| 
|  12   | Sistema              | ERRORE: formato della foto non supportato  |
|       | *Ritorna al passo 8* |                                            |
