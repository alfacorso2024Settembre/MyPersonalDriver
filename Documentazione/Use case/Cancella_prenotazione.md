## Cancella prenotazione

## Attori: 
Driver, User

## Descrizione:
L'attore cancella una prenotazione con stato "attiva" o "in sospeso"

## Precondizioni:
L'utente è registrato nell'applicazione 

## Scenario base:
| Passo | Attore                     | Azione                                                                                                  |
|:-----:|:---------------------------|:--------------------------------------------------------------------------------------------------------|
|   1   | User                       | effettua una ricerca delle proprie prenotazioni con stato "accettata" o "in sospeso"                    |
|   2   | Sistema                    | restituisce i risultati della ricerca                                                                   |
|   3   | User                       | seleziona la prenotazione da cancellare                                                                 |
|   4   | Sistema                    | controlla quanto tempo manca tra il tempo della cancellazione e il tempo della prenotazione             |
|   5   | Sistema                    | mancano più di 20 minuti, effettuo un update dello stato della prenotazione cambiandolo in "cancellata" |
|   6   | Sistema                    | avvia il processo di rimborso per l'utente (Caso d'uso rimborso driver)                                 |
|       | *Termina il caso d'uso*    |                                                                                                         |

### Eccezione 4:
| Passo | Attore                     | Azione                                                           |
|:-----:|:---------------------------|:-----------------------------------------------------------------|
|   4   | Sistema                    | errore: la prenotazione è stata già cancellata                   |
|       | *Termina il caso d'uso*    |                                                                  |

### Eccezione 4:
| Passo | Attore                     | Azione                               |
|:-----:|:---------------------------|:-------------------------------------|
|   4   | Sistema                    | errore: la prenotazione è "in corso" |
|       | *Termina il caso d'uso*    |                                      |

## Estensione 5
| Passo | Attore                     | Azione                                                             |
|:-----:|:---------------------------|:-------------------------------------------------------------------|
|   5   | Sistema                    | mancano 20 o meno minuti, Caso d'uso rimborso driver               |
|   6   | Sistema                    | cambia lo stato della prenotazione da "accettata" a "cancellata"   |
|       | *Termina il caso d'uso*    |                                                                    |





