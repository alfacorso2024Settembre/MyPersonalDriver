# Aggiungi veicolo
## Attore primario
User registrato

## Parti interessate
Admin

## Descrizione:  
L'utente accede alla piattaforma My Personal Driver e aggiunge un veicolo al proprio account. Durante il processo, l'utente inserisce i dati relativi al veicolo e carica una foto dell'assicurazione. Una volta caricata, l'assicurazione verrà verificata manualmente dall'admin.

## Precondizioni: 
L'utente deve essere registrato e autenticato.

## Scenario Base - Aggiungi veicolo

| Passo | Attore                  | Azione                                                                   | 
|:-----:|:------------------------|:-------------------------------------------------------------------------| 
|   1   | Utente                  | accede al proprio account sulla piattaforma My Personal Driver.          | 
|   2   | Utente                  | seleziona l'opzione "Aggiungi veicolo"                                   |
|   3   | Sistema                 | mostra la pagina per l'inserimento dei dettagli del nuovo veicolo        | 
|   4   | Utente                  | inserisce i dati del veicolo                                             |
|   5   | Sistema                 | richiede il caricamento dell'assicurazione                               |
|   6   | Utente                  | carica la foto dell'assicurazione                                        |
|   7   | Sistema                 | verifica che il formato dell'immagine sia corretto                       | 
|   8   | Sistema                 | carica i nuovi dati inseriti                                             |
|   9   | Sistema                 | informa sul buon fine dell'aggiunta del nuovo veicolo                    | 
|       | *Termina il caso d'uso* |                                                                          |


### Eccezione 5.1
| Passo | Attore                  | Azione                                                | 
|:-----:|:------------------------|:------------------------------------------------------| 
|   5   | Sistema                 | ERRORE: i dati inseriti non sono nel formato corretto |
|       | *Ritorna al passo 3*    |                                                       |

### Eccezione 7.1
| Passo | Attore                  | Azione                                                | 
|:-----:|:------------------------|:------------------------------------------------------| 
|   7   | Sistema                 | ERRORE: formato della foto non supportato             |
|       | *Ritorna al passo 3*    |                                                       |