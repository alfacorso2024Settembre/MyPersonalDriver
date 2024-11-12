# Aggiungi veicolo
## Attore primario
User registrato

## Parti interessate
Admin

## Descrizione:  
L'utente accede alla piattaforma My Personal Driver e aggiunge un veicolo al proprio account. \
Durante il processo, l'utente inserisce i dati relativi al veicolo e carica una foto dell'assicurazione. \
Una volta caricata, l'assicurazione verrà verificata manualmente dall'admin.

## Precondizioni: 
L'utente deve essere registrato e autenticato.

## Scenario Base - Aggiungi veicolo
| Passo | Attore                  | Azione                                                            | 
|:-----:|:------------------------|:------------------------------------------------------------------| 
|   1   | Utente                  | accede al proprio account sulla piattaforma My Personal Driver.   | 
|   2   | Sistema                 | mostra l'account dell'utente                                      | 
|   3   | Utente                  | seleziona l'opzione "Aggiungi veicolo"                            |
|   4   | Sistema                 | mostra la pagina per l'inserimento dei dettagli del nuovo veicolo | 
|   5   | Utente                  | inserisce i dati del veicolo                                      |
|   6   | Sistema                 | verifica il formato dei dati inseriti                             |
|   7   | Sistema                 | richiede il caricamento dell'assicurazione                        |
|   8   | Utente                  | carica la foto dell'assicurazione                                 |
|   9   | Sistema                 | verifica che il formato dell'immagine sia corretto                | 
|  10   | Sistema                 | carica i nuovi dati inseriti                                      |
|  11   | Sistema                 | informa sul buon fine dell'aggiunta del nuovo veicolo             | 
|       | *Termina il caso d'uso* |                                                                   |


### Eccezione 6.1
| Passo | Attore               | Azione                                                | 
|:-----:|:---------------------|:------------------------------------------------------| 
|   6   | Sistema              | ERRORE: i dati inseriti non sono nel formato corretto |
|       | *Ritorna al passo 4* |                                                       |

### Eccezione 9.1
| Passo | Attore               | Azione                                                | 
|:-----:|:---------------------|:------------------------------------------------------| 
|   9   | Sistema              | ERRORE: formato della foto non supportato             |
|       | *Ritorna al passo 7* |                                                       |