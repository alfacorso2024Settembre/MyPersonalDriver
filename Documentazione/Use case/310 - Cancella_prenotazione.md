## Cancella prenotazione

## Attori: 
Driver, User

## Descrizione:
L'attore cancella una prenotazione con stato "accettata" o "in sospeso"

## Precondizioni:
L'utente è registrato nell'applicazione 

## Scenario base:
| Passo | Attore                  | Azione                                                                               |
|:-----:|:------------------------|:-------------------------------------------------------------------------------------|
|   1   | Utente                  | effettua una ricerca delle proprie prenotazioni con stato "accettata" o "in sospeso" |
|   2   | Sistema                 | restituisce i risultati della ricerca                                                |
|   3   | Utente                  | seleziona la prenotazione da cancellare                                              |
|   4   | Sistema                 | controlla che la corsa non sia stata cancellata                                      |
|   5   | Sistema                 | controlla che la corsa non sia "in corso"                                            |
|   6   | Sistema                 | controlla quanto tempo manca all'inizio della corsa                                  |
|   7   | Sistema                 | riscontra che mancano più di 20 minuti                                               |
|   8   | Sistema                 | effettua un update dello stato della prenotazione cambiandolo in "cancellata"        |
|   9   | Sistema                 | avvia il processo di rimborso per l'utente (Caso d'uso rimborso driver)              |
|       | *Termina il caso d'uso* |                                                                                      |

### Variante del passo 4:
| Passo | Attore                     | Azione                                                           |
|:-----:|:---------------------------|:-----------------------------------------------------------------|
|   4   | Sistema                    | errore: la prenotazione è stata già cancellata                   |
|       | *Termina il caso d'uso*    |                                                                  |

### Variante del passo 5:
| Passo | Attore                     | Azione                               |
|:-----:|:---------------------------|:-------------------------------------|
|   5   | Sistema                    | errore: la prenotazione è "in corso" |
|       | *Termina il caso d'uso*    |                                      |

## Estensione 7.1
| Passo | Attore                                     | Azione                                                           |
|:-----:|:-------------------------------------------|:-----------------------------------------------------------------|
|   5   | Sistema                                    | riscontra che mancano 20 o meno minuti                           |
|   6   | Sistema                                    | riscontra che l'utente a cui mandare il rimborso è lo user       |
|   7   | Sistema                                    | inizia la pratica di rimborso (Caso d'uso Rimborsi User)         |
|       | *Esegue passo 8 dello scenario principale* |                                                                  |

## Estensione 7.1.a
| Passo | Attore                              | Azione                                                       |
|:-----:|:------------------------------------|:-------------------------------------------------------------|
|   5   | Sistema                             | riscontra che l'utente a cui mandare il rimborso è il driver |
|   6   | Sistema                             | inizia la pratica di rimborso (Caso d'uso Rimborsi Driver)   |
|       | *Esegue passo 8 della variante 7.1* |                                                              |




