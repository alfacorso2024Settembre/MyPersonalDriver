# Elimina utente

## Attori
Utente (user o driver) 

## Descrizione
L'utente desidera eliminare il proprio profilo dalla piattaforma.

## Pre-condizioni
L'utente deve aver effettuato il login all'interno della piattaforma.

## Post-condizioni
Il profilo dell'utente è stato cancellato dalla piattaforma.


## Scenario principale
| Passo | Attore                  | Azione                                                             | 
|:-----:|:------------------------|:-------------------------------------------------------------------| 
|   1   | Utente                  | va sul proprio profilo						                       | 
|   2   | Sistema                 | visualizza pagina delle impostazioni			                   |
|   3   | Utente                  | seleziona l'impostazione "elimina profilo"                         | 
|   4   | Sistema                 | richiede la conferma di eliminazione del profilo       			   |
|   5   | Utente                  | conferma l'eliminazione dell'account							   | 
|   6   | Sistema                 | elimina profilo dal server		                                   |
|   8   | Sistema                 | invia messaggio di conferma di eliminazione 	                   |
|       |*Termina il caso d'uso*  |                                                                    |

### Eccezione 4.a
| Passo | Attore                  | Azione                                      								| 
|:-----:|:------------------------|:----------------------------------------------------------------------------| 
|   4   | Sistema                 | ERRORE: impossibile eliminare il profilo perche gia' eliminato da un admin. |
|       | *Termina il caso d'uso* |                                             								|

### Eccezione 4.b
| Passo | Attore                  | Azione                                      								| 
|:-----:|:------------------------|:----------------------------------------------------------------------------| 
|   4   | Sistema                 | ERRORE: impossibile eliminare il profilo con un rimborso in corso.		 	|
|       | *Termina il caso d'uso* |                                             								|


### Eccezione 4.c
| Passo | Attore                  | Azione                                      								| 
|:-----:|:------------------------|:----------------------------------------------------------------------------| 
|   4   | Sistema                 | ERRORE: impossibile eliminare il profilo con una corsa in corso.		 	|
|       | *Termina il caso d'uso* |                                             								|

## Scenario alternativo A
| Passo | Attore                  | Azione                                      								| 
|:-----:|:------------------------|:----------------------------------------------------------------------------| 
|   5   | Utente                  | annulla l'eliminazione dell'account		 									|
|   4   | Sistema                 | visualizza la pagina delle impostazioni									 	|
|       | *Termina il caso d'uso* |                                             								|
