# Segnalazioni
### Nome caso d'uso:
Segnalazioni
### Attore primario:
Driver, User
### Parti interessate:
Admin
### Pre-condizioni:
L’attore deve essere autenticato come User o come Driver
### Garanzie di successo o post-condizioni:
La segnalazione viene registrata e inoltrata all’Admin, che la analizzerà

## Scenario principale di successo:
|         Passo          | Attore      | Azione                                                                                                                                                                                                                                                                    |
|:----------------------:|:------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|           1            | User/Driver | Entra nella sezione Segnalazioni dell’app                                                                                                                                                                                                                                 |
|           2            | Sistema     | Visualizza il menù delle segnalazioni                                                                                                                                                                                                                                     |
|           3            | User/Driver | Seleziona una delle opzioni disponibili                                                                                                                                                                                                                                   |
|           4            | Sistema     | Apre la pagina dedicata a quella selezione                                                                                                                                                                                                                                |
|  Termina il caso d'uso |

## Estensione 4a

|         Passo         | Attore      | Azione                                                                                                               |
|:---------------------:|:------------|:---------------------------------------------------------------------------------------------------------------------|
|         4a.1          | User/Driver | Selezione l’opzione Segnala per incidente stradale                                                                   |                                                                                    
|         4a.2          | Sistema     | Chiede all’utente se conferma di essere stato coinvolto in un incidente stradale                                     |
|         4a.3          | User/Driver | Seleziona l’opzione Conferma                                                                                         |
|         4a.4          | Sistema     | Chiede all’utente se desidera allegare una foto dell’accaduto                                                        |
|         4a.5          | User/Driver | Seleziona l'opzione Conferma                                                                                         |
|         4a.6          | Sistema     | Farà apparire una schermata che permetterà di caricare o scattare una foto                                           |
|         4a.7          | User/Driver | Caricherà una foto dell’accaduto                                                                                     |
|         4a.8          | Sistema     | Chiede all’utente se desidera caricare la foto                                                                       |
|         4a.9          | User/Driver | Seleziona l’opzione Conferma                                                                                         |
|         4a.10         | Sistema     | Carica la foto                                                                                                       |
|         4a.11         | Sistema     | Chiede se si vuole aggiungere ulteriori informazioni, come ad esempio una descrizione                                |
|         4a.12         | User/Driver | Manda una descrizione dell’accaduto                                                                                  |
|         4a.13         | Sistema     | Chiede se desidera confermare la descrizione                                                                         |
|         4a.14         | User/Driver | Seleziona l’opzione Conferma                                                                                         |
|         4a.15         | Sistema     | Chiede se tutte le informazioni sono corrette e se desidera inoltrare la Segnalazione ricevuta                       |
|         4a.16         | User/Driver | Seleziona l’opzione Conferma                                                                                         |
|         4a.17         | Sistema     | Fa apparire la schermata di Segnalazione ricevuta, suggerendo di contattare i soccorsi nel caso in cui sia necessari |
|         4a.18         | Sistema     | Invia una mail all’User e al Driver con tutte le informazioni relative al momento della segnalazione                 |
|         4a.19         | Sistema     | Inoltra la segnalazione all’Admin                                                                                    |
| Termina il caso d'uso |

## Eccezione 4a.3a

|  Passo  | Attore      | Azione                                                   |
|:-------:|:------------|:---------------------------------------------------------|
| 4a.3a.1 | User/Driver | Seleziona l’opzione Annulla                              |                                                                                    
|  4a.2   | Sistema     | Farà visualizzare il menù principale delle segnalazioni  |
| Termina il caso d'uso |

## Eccezione 4a.5a

|         Passo         | Attore      | Azione                      |
|:---------------------:|:------------|:----------------------------|
|        4a.5a.1        | User/Driver | Seleziona l’opzione Annulla |                                                                                    
|        4a.5a.2        | Sistema     | Salta al punto 4a.11        |
| Termina il caso d'uso |

## Eccezione 4a.14a

|         Passo         | Attore      | Azione                      |
|:---------------------:|:------------|:----------------------------|
|       4a.14a.1        | User/Driver | Seleziona l’opzione Annulla |                                                                                    
|       4a.14a.2        | Sistema     | Salta al punto 4a.15        |
| Termina il caso d'uso |

## Eccezione 4a.16a

|         Passo         | Attore      | Azione                                                                 |
|:---------------------:|:------------|:-----------------------------------------------------------------------|
|       4a.16a.1        | User/Driver | Seleziona l’opzione Annulla                                            |                                                                                    
|       4a.16a.2        | Sistema     | Fa apparire la schermata principale del menù delle segnalazioni        |
| Termina il caso d'uso |

## Estensione 4b

|         Passo         | Attore      | Azione                                                                                                                    |
|:---------------------:|:------------|:--------------------------------------------------------------------------------------------------------------------------|
|         4b.1          | User/Driver | Selezione l’opzione Segnala utente per atteggiamento sospetto                                                             |                                                                                    
|         4b.2          | Sistema     | Chiede all’utente se conferma di aver avuto delle problematiche con l’User o con il Driver                                |
|         4b.3          | User/Driver | Seleziona l’opzione Conferma                                                                                              |
|         4b.4          | Sistema     | Chiede all’utente se desidera fornire una descrizione dell’accaduto                                                       |
|         4b.5          | User/Driver | Manda una descrizione dell’accaduto                                                                                       |
|         4b.6          | Sistema     | Chiede se tutte le informazioni sono corrette                                                                             |
|         4b.7          | User/Driver | Seleziona l’opzione Conferma                                                                                              |
|         4b.8          | Sistema     | Chiede se desidera inoltrare la Segnalazione ricevuta                                                                     |
|         4b.9          | User/Driver | Seleziona l’opzione Conferma                                                                                              |
|         4b.10         | Sistema     | Fa apparire la schermata di Segnalazione ricevuta, suggerendo di contattare i soccorsi nel caso in cui sia necessario     |
|         4b.11         | Sistema     | Invia una mail all’Utente che ha inviato la segnalazione con tutte le informazioni relative al momento della segnalazione |
|         4b.12         | Sistema     | Inoltra la segnalazione all’Admin                                                                                         |
| Termina il caso d'uso |

## Eccezione 4b.3a

|         Passo         | Attore      | Azione                                                   |
|:---------------------:|:------------|:---------------------------------------------------------|
|        4b.3a.1        | User/Driver | Seleziona l’opzione Annulla                              |                                                                                    
|        4b.3a.2        | Sistema     | Farà visualizzare il menù principale delle segnalazioni  |
| Termina il caso d'uso |

## Eccezione 4b.5a

|         Passo         | Attore      | Azione                      |
|:---------------------:|:------------|:----------------------------|
|        4b.5a.1        | User/Driver | Seleziona l’opzione Annulla |                                                                                    
|        4b.5a.2        | Sistema     | Salta al punto 4b.6         |
| Termina il caso d'uso |

## Eccezione 4b.7a

|         Passo         | Attore      | Azione                      |
|:---------------------:|:------------|:----------------------------|
|        4b.7a.1        | User/Driver | Seleziona l’opzione Annulla |                                                                                    
|        4b.7a.2        | Sistema     | Torna al punto 4b.1         |
| Termina il caso d'uso |

## Eccezione 4b.9a

|         Passo         | Attore      | Azione                                                   |
|:---------------------:|:------------|:---------------------------------------------------------|
|        4b.9a.1        | User/Driver | Seleziona l’opzione Annulla                              |                                                                                    
|        4b.9a.2        | Sistema     | Farà visualizzare il menù principale delle segnalazioni  |
| Termina il caso d'uso |

## Estensione 4c

|         Passo         | Attore  | Azione                                                                                                                    |
|:---------------------:|:--------|:--------------------------------------------------------------------------------------------------------------------------|
|         4c.1          | User    | Selezione l’opzione Segnala anomalie nel pagamento                                                                        |                                                                                    
|         4c.2          | Sistema | Chiede all’utente se conferma di aver avuto problematiche nel pagamento                                                   |
|         4c.3          | User    | Seleziona l’opzione Conferma                                                                                              |
|         4c.4          | Sistema | Chiede all’utente di selezionare la corsa con la quale ha avuto delle problematiche                                       |
|         4c.5          | User    | Seleziona la corsa                                                                                                        |
|         4c.6          | Sistema | Chiede di inoltrare una descrizione del problema                                                                          |
|         4c.7          | User    | L’utente allegherà una descrizione del problema con il pagamento                                                          |
|         4c.8          | Sistema | Chiede se desidera confermare la descrizione                                                                              |
|         4c.9          | User    | Seleziona l’opzione Conferma                                                                                              |
|         4c.10         | Sistema | Chiede se desidera inoltrare la Segnalazione all’Admin                                                                    |
|         4c.11         | User    | Seleziona l’opzione Conferma                                                                                              |
|         4c.12         | Sistema | Invia una mail all’Utente che ha inviato la segnalazione con tutte le informazioni relative al momento della segnalazione |
|         4c.13         | Sistema | Inoltra la segnalazione all’Admin                                                                                         |
| Termina il caso d'uso |

## Eccezione 4c.3a

|         Passo         | Attore  | Azione                                                   |
|:---------------------:|:--------|:---------------------------------------------------------|
|        4c.3a.1        | User    | Seleziona l’opzione Annulla                              |                                                                                    
|        4c.3a.2        | Sistema | Farà visualizzare il menù principale delle segnalazioni  |
| Termina il caso d'uso |

## Eccezione 4c.5a

|         Passo         | Attore  | Azione                                                   |
|:---------------------:|:--------|:---------------------------------------------------------|
|        4c.5a.1        | User    | Seleziona l’opzione Annulla                              |                                                                                    
|        4c.5a.2        | Sistema | Farà visualizzare il menù principale delle segnalazioni  |
| Termina il caso d'uso |

## Eccezione 4c.9a

|         Passo         | Attore  | Azione                      |
|:---------------------:|:--------|:----------------------------|
|        4c.9a.1        | User    | Seleziona l’opzione Annulla |                                                                                    
|        4c.9a.2        | Sistema | Torna al punto 4c.6         |
| Termina il caso d'uso |

## Eccezione 4c.11a

|         Passo         | Attore  | Azione                                                   |
|:---------------------:|:--------|:---------------------------------------------------------|
|       4c.11a.1        | User    | Seleziona l’opzione Annulla                              |                                                                                    
|       4c.11a.2        | Sistema | Farà visualizzare il menù principale delle segnalazioni  |
| Termina il caso d'uso |

## Estensione 4d

|         Passo         | Attore  | Azione                                                                                                                    |
|:---------------------:|:--------|:--------------------------------------------------------------------------------------------------------------------------|
|         4d.1          | User    | Selezione l’opzione Segnala per multa ricevuta                                                                            |                                                                                    
|         4d.2          | Sistema | Chiede all’utente se conferma di aver ricevuto una multa a carico di terzi                                                |
|         4d.3          | User    | Seleziona l’opzione Conferma                                                                                              |
|         4d.4          | Sistema | Chiede all’utente di caricare una foto della multa                                                                        |
|         4d.5          | User    | Seleziona l’opzione Conferm                                                                                               |
|         4d.6          | Sistema | Fa apparire una schermata che permetterà di caricare o scattare una foto                                                  |
|         4d.7          | User    | Carica una foto dell’accaduto                                                                                             |
|         4d.8          | Sistema | Chiede all’utente se desidera confermare la foto                                                                          |
|         4d.9          | User    | Seleziona l’opzione Conferma                                                                                              |
|         4d.10         | Sistema | Carica la foto                                                                                                            |
|         4d.11         | Sistema | Chiede se si vogliono aggiungere informazioni aggiuntive, come ad esempio una descrizione                                 |
|         4d.11         | User    | Manda una descrizione dell’accaduto                                                                                       |
|         4d.12         | Sistema | Chiede se desidera confermare la descrizione                                                                              |
|         4d.13         | User    | Seleziona l’opzione Conferma                                                                                              |
|         4d.14         | Sistema | Fa apparire la schermata di Segnalazione ricevuta                                                                         |
|         4d.15         | Sistema | Invia una mail all’Utente che ha inviato la segnalazione con tutte le informazioni relative al momento della segnalazione |
|         4d.16         | Sistema | Inoltra la segnalazione all’Admin                                                                                         |
| Termina il caso d'uso |

## Eccezione 4d.3a

|         Passo         | Attore  | Azione                                                 |
|:---------------------:|:--------|:-------------------------------------------------------|
|        4d.3a.1        | User    | Seleziona l’opzione Annulla                            |                                                                                    
|        4d.3a.2        | Sistema | Fa visualizzare il menù principale delle segnalazioni  |
| Termina il caso d'uso |

## Eccezione 4d.5a

|         Passo         | Attore  | Azione                                                                          |
|:---------------------:|:--------|:--------------------------------------------------------------------------------|
|        4d.5a.1        | User    | Seleziona l’opzione Annulla                                                     |                                                                                    
|        4d.5a.2        | Sistema | Comunica all’utente che senza una foto della multa non può inviare la richiesta |
|        4d.3a.2        | Sistema | Fa visualizzare il menù principale delle segnalazioni                           |
| Termina il caso d'uso |

## Eccezione 4d.9a

|         Passo         | Attore  | Azione                      |
|:---------------------:|:--------|:----------------------------|
|        4d.9a.1        | User    | Seleziona l’opzione Annulla |                                                                                    
|        4d.9a.2        | Sistema | Torna al punto 4d.4         |
| Termina il caso d'uso |

## Eccezione 4d.13a

|         Passo         | Attore  | Azione                                                    |
|:---------------------:|:--------|:----------------------------------------------------------|
|        4d.9a.1        | User    | Seleziona l’opzione Annulla                               |                                                                                    
|        4d.9a.2        | Sistema | Fa visualizzare il menù principale delle segnalazioni     |
| Termina il caso d'uso |