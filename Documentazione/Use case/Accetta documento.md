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

<!-- 
    COSE CAMBIATE: 
    aggiunta delle varie alternative in base al documento
-->

## Scenario principale
| Passo | Attore                  | Azione                                                             | 
|:-----:|:------------------------|:-------------------------------------------------------------------| 
|   1   | Admin                   | seleziona "visualizza documenti da accettare"                      | 
|   2   | Sistema                 | restituisce l'elenco dei documenti da verificare                   |
|   3   | Admin                   | seleziona il documento da visualizzare                             | 
|   4   | Sistema                 | mostra pagina con dati da verificare e la foto del documento       |
|   5   | Admin                   | controlla che i dati del documento corrispondano a quelli inseriti | 
|   6   | Admin                   | accetta il documento dell' utente                                  |
|   8   | Sistema                 | aggiorna lo stato del documento in "accettato"                     |
|   9   | Sistema                 | manda email di conferma all'utente                                 |       
|       |*Termina il caso d'uso*  |                                                                    |

### Eccezione 8.1
| Passo | Attore                  | Azione                                      | 
|:-----:|:------------------------|:--------------------------------------------| 
|   8   | Sistema                 | ERRORE: profilo utente non piu' disponibile |
|       | *Termina il caso d'uso* |                                             |

### Eccezione 9.1
| Passo | Attore                  | Azione                                  | 
|:-----:|:------------------------|:----------------------------------------| 
|   8   | Sistema                 | errore nell'invio della mail all'utente |
|   9   | Sistema                 | notifica l'errore all'admin             |
|       | *Termina il caso d'uso* |                                         |

## Estensione 5.1
| Passo | Attore                   | Azione                                               | 
|:-----:|:-------------------------|:-----------------------------------------------------| 
|   5   | Admin                    | riscontra che i dati del documento non sono corretti |
|   6   | Admin                    | rifiuta il documento                                 |
|   7   | Sistema                  | richiede il motivo del rifiuto                       |
|   8   | Admin                    | inserisce il motivo del rifiuto                      |
|   8   | Sistema                  | manda email all'utente con il motivo del rifiuto     |
|       | *Termina il caso d'uso*  |                                                      |

## Estensione 5.2
| Passo | Attore                   | Azione                                                                | 
|:-----:|:-------------------------|:----------------------------------------------------------------------| 
|   5   | Admin                    | riscontra che il tipo di documento caricato non è tra quelli previsti |
|   6   | Admin                    | rifiuta il documento                                                  |
|   7   | Sistema                  | richiede il motivo del rifiuto                                        |
|   8   | Admin                    | inserisce il motivo del rifiuto                                       |
|   8   | Sistema                  | manda email all'utente con il motivo del rifiuto                      |
|       | *Termina il caso d'uso*  |                                                                       |

## Estensione 5.3
| Passo | Attore                   | Azione                                            | 
|:-----:|:-------------------------|:--------------------------------------------------| 
|   5   | Admin                    | riscontra che l'immagine caricata non è leggibile |
|   6   | Admin                    | rifiuta il documento                              |
|   7   | Sistema                  | richiede il motivo del rifiuto                    |
|   8   | Admin                    | inserisce il motivo del rifiuto                   |
|   8   | Sistema                  | manda email all'utente con il motivo del rifiuto  |
|       | *Termina il caso d'uso*  |                                                   |

## Estensione 5.3
| Passo | Attore                   | Azione                                           | 
|:-----:|:-------------------------|:-------------------------------------------------| 
|   5   | Admin                    | riscontra che il documento caricato è scaduto    |
|   6   | Admin                    | rifiuta il documento                             |
|   7   | Sistema                  | richiede il motivo del rifiuto                   |
|   8   | Admin                    | inserisce il motivo del rifiuto                  |
|   8   | Sistema                  | manda email all'utente con il motivo del rifiuto |
|       | *Termina il caso d'uso*  |                                                  |







