# Elimina account

## Attore primario
Admin

## Parti interessate
Utente (user o driver)

## Descrizione
L'amministratore vuole eliminare un utente in seguito ad una segnalazione grave.

## Precondizioni
L'attore primario deve essere autenticato come admin della piattaforma e l'utente da eliminare deve aver ricevuto almeno una segnalazione.

## Post-condizioni
L'utente viene eliminato dalla piattaforma.

## Scenario principale
| Passo | Attore                   | Azione                                              |
|:-----:|:-------------------------|:----------------------------------------------------|
|   1   | Utente                   | cerca l'utente da eliminare                         |
|   2   | Sistema                  | mostra il profilo dell'utente da eliminare          |
|   3   | Utente                   | seleziona "elimina profilo"                         |
|   4   | Sistema                  | richiede conferma per l'eliminazione del profilo    |
|   5   | Utente                   | conferma l'eliminazione                             |
|   6   | Sistema                  | cambia lo stato dell'account a "cancellato"         |
|   7   | Sistema                  | elimina l'utente collegato all'account dal database |
|   8   | Sistema                  | invia un'email all'utente eliminato                 |
|       | *Termina il caso d'uso*  |                                                     |


### Eccezione 4.a
| Passo | Attore                   | Azione                                                              |
|:-----:|:-------------------------|:--------------------------------------------------------------------|
|   4   | Sistema                  | impossibile eliminare il profilo perche gia' eliminato dall'utente. |
|       | *Termina il caso d'uso*  |                                                                     |

### Eccezione 4.b
| Passo | Attore                   | Azione                                                    |
|:-----:|:-------------------------|:----------------------------------------------------------|
|   4   | Sistema                  | impossibile eliminare il profilo con una corsa in corso.  |
|       | *Termina il caso d'uso*  |                                                           |

### Eccezione 4.c
| Passo | Attore                   | Azione                                                      |
|:-----:|:-------------------------|:------------------------------------------------------------|
|   4   | Sistema                  | impossibile eliminare il profilo con un rimborso in corso.  |
|       | *Termina il caso d'uso*  |                                                             |


## Scenario alternativo A
5) utente: annulla eliminazione
6) sistema: mostra il profilo dell'utente
*Termina il caso d'uso*

| Passo | Attore             | Azione               |
|:-----:|:-------------------|:---------------------|
|   5   | Utente             | annulla eliminazione |
|       | *Torna al passo 2* |                      |

