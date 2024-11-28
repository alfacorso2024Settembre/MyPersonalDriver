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

## Scenario principale
| Passo | Attore                  | Azione                                                             | 
|:-----:|:------------------------|:-------------------------------------------------------------------| 
|   1   | Admin                   | seleziona "visualizza documenti da accettare"                      | 
|   2   | Sistema                 | restituisce l'elenco dei documenti da verificare                   |
|   3   | Admin                   | seleziona il documento da visualizzare                             | 
|   4   | Sistema                 | mostra pagina con dati da verificare e la foto del documento       |
|   5   | Admin                   | controlla che i dati del documento corrispondano a quelli inseriti | 
|   6   | Admin                   | accetta il documento dell' utente                                  |
|   7   | Sistema                 | chiede conferma                                                    |
|   8   | Admin                   | conferma la scelta                                                 |  
|   9   | Sistema                 | aggiorna lo stato del documento in "accettato"                     |
|   10  | Sistema                 | manda email di conferma all'utente                                 |       
|       |*Termina il caso d'uso*  |                                                                    |

### Variante 7.1
| Passo | Attore                  | Azione                                      | 
|:-----:|:------------------------|:--------------------------------------------| 
|   7   | Sistema                 | ERRORE: profilo utente non piu' disponibile |
|       | *Termina il caso d'uso* |                                             |

### Eccezione 8.1
| Passo | Attore                  | Azione                                              | 
|:-----:|:------------------------|:----------------------------------------            | 
|   8   | Sistema                 | riscontra un errore nell'invio della mail all'utente|
|   9   | Sistema                 | notifica l'errore all'admin                         |
|       | *Termina il caso d'uso* |                                                     |

## Estensione 5.1
| Passo | Attore                   | Azione                                               | 
|:-----:|:-------------------------|:-----------------------------------------------------| 
|   5   | Admin                    | riscontra che i dati del documento non sono corretti |
|   6   | Admin                    | rifiuta il documento                                 |
|   7   | Sistema                  | richiede il motivo del rifiuto                       |
|   8   | Admin                    | inserisce il motivo del rifiuto                      |
|   9   | Admin                    | invia il motivo                                      |
|   10  | Sistema                  | chiede conferma dell'invio dell'email all'utente     |
|   11  | Admin                    | conferma la scelta                                   |  
|   12  | Sistema                  | manda email all'utente con il motivo del rifiuto     |
|       | *Termina il caso d'uso*  |                                                      |

## Estensione 5.2
| Passo | Attore                             | Azione                                                                | 
|:-----:|:-----------------------------------|:----------------------------------------------------------------------| 
|   5   | Admin                              | riscontra che il tipo di documento caricato non è tra quelli previsti |
|       | *Vai al passo 6 di Estensione 5.1* |                                                                       |

## Estensione 5.3
| Passo | Attore                              | Azione                                            | 
|:-----:|:------------------------------------|:--------------------------------------------------| 
|   5   | Admin                               | riscontra che l'immagine caricata non è leggibile |
|       | *Vai al passo 6 di Estensione 5.1*  |                                                   |

## Estensione 5.4
| Passo | Attore                             | Azione                                        | 
|:-----:|:-----------------------------------|:----------------------------------------------| 
|   5   | Admin                              | riscontra che il documento caricato è scaduto |
|       | *Vai al passo 6 di Estensione 5.1* |                                               |


# Components

- NAVBAR: logo dell'app visibile sulla sinistra, al centro il link che porta alla home e a destra l'immagine di profilo dell'utemte che permette di accedere alla gestione del profilo.
- FOOTER: generico di tutte le pagine, sarà presente un bottone al centro del footer grazie al quale sarà possibile visualizzare i dati dell'applicazione (email, numero di telefono, indirizzo, etc.).
- TABELLA DOCUMENTI DA ACCETTARE: tabella che mostra i documenti con stato "da accettare". Se non ci sono documenti da verificare, viene mostrata la scritta "Non sono presenti documenti da verificare.".
- ELEMENTO TABELLA DOCUMENTI DA ACCETTARE: ogni riga contiene i dati del documento da accettare, con il button "visualizza" che permette di visualizzare tutti i dati del documento e l'immagine caricata.
- DOCUMENTO: pagina che contiene tutte le info del documento precedentemente selezionato e l'immagine. Sono presenti due buttons ("accetta documento" e "rifiuta documento") che mostrano un pop-up per la conferma della scelta.
- ELEMENTO FOTO DEL DOCUMENTO: immagine del documento caricata dall'utente.
- ELEMENTO INFO DEL DOCUMENTO: informazioni del documento inserite dall'utente.
- RIFIUTA DOCUMETO: form in formato email che prende in input l'email dell'utente a cui appartiene il documento rifiutato e consente di scegliere il motivo del rifiuto e (opzionalmente) descrivere il problema in modo piu' dettagliato. Contiene un button "invia" che genera un pop-up per la conferma dell'invio.




