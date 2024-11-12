# Accetta Prenotazione
## Attori 
Driver

## Descrizione:
Il driver accetta o rifiuta la richiesta di prenotazione inviata da un utente regolare

## Precondizioni:
L'utente è registrato nell'applicazione con un account di tipo Driver

## Scenario Base:
| Passo | Attore                  | Azione                                                                                                                               |
|:-----:|:------------------------|:-------------------------------------------------------------------------------------------------------------------------------------|
|   1   | Driver                  | ricerca le prenotazioni relative al suo account con stato "nuova"                                                                    |
|   2   | Sistema                 | ritorna una lista con i risultati della ricerca                                                                                      |
|   3   | Driver                  | seleziona prenotazione                                                                                                               |
|   4   | Driver                  | accetta la prenotazione selezionata                                                                                                  |
|   5   | Sistema                 | controlla che la prenotazione non sia stata cancellata                                                                               |
|   6   | Sistema                 | riscontra che la prenotazione non ha lo stato "cancellata"                                                                           |
|   7   | Sistema                 | controlla se il driver ha prenotazioni "accettate"                                                                                   |
|   8   | Sistema                 | se ci sono prenotazioni "accettate, cambia lo stato della nuova prenotazione in "in sospeso"                                         |
|   9   | Sistema                 | invia notifica all'utente per comunicare la conferma della prenotazione                                                              |
|       | *Termina il caso d'uso* |                                                                                                                                      |

### Variante passo 8
| Passo | Attore                               | Azione                                                                                                                               |
|:-----:|:-------------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------|
|   8   | Sistema                              | se non ci sono prenotazioni "accettate", effettua un update sullo stato della prenotazione cambiandola da "in sospeso" a "accettata" |
|   9   | Sistema                              | controlla se il driver ha prenotazioni "in sospeso"                                                                                  |
|  10   | Sistema                              | riscontra che non ci sono prenotazioni con stato "in sospeso"                                                                        |
|       | *Esegui passo 9 dello scenario base* |                                                                                                                                      |

### Variante passo 10
| Passo | Attore                          | Azione                                                                        |
|:-----:|:--------------------------------|:------------------------------------------------------------------------------|
|   5   | Sistema                         | riscontra che è già presente una prenotazione "in sospeso" allo stesso orario |
|       | *Esegue passo 5 in estenisone * |                                                                               |
 
### Variante passo 6
| Passo | Attore                  | Azione                                                     |
|:-----:|:------------------------|:-----------------------------------------------------------|
|   6   | Sistema                 | riscontra che la prenotazione ha lo stato "cancellata"     |
|       | *Termina il caso d'uso* |                                                            |


## Estensione 4A - Rifiuta la prenotazione
| Passo | Attore                  | Azione                                                                                   |
|:-----:|:------------------------|:-----------------------------------------------------------------------------------------|
|   4   | Driver                  | rifiuta la prenotazione selezionata                                                      |
|   5   | Sistema                 | effettua un update sullo stato della prenotazione cambiandola da "in sospeso" a "chiusa" |
|       | Sistema                 | invia notifica all'utente per comunicare il rifiuto della prenotazione                   |
|       | *Termina il caso d'uso* |                                                                                          |





