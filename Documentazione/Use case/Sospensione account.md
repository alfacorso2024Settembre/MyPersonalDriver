# Sospensione User
### Nome caso d'uso:
Sospensione User
## Attore primario:
Driver, User, Admin
## Pre-condizioni:
L'Admin sostiene che il profilo dell'utente vada sospeso a seguito di segnalazioni
## Garanzie di successo o post-condizioni: \

## Scenario principale di successo:
|         Passo         | Attore  | Azione                                                                                                                                             |
|:---------------------:|:--------|:---------------------------------------------------------------------------------------------------------------------------------------------------|
|           1           | Utente  | invia correttamente una segnalazione all'Admin                                                                                                     |
|           2           | Sistema | Inoltra la segnalazione all'Admin                                                                                                                  |
|           3           | Sistema | Inoltra una mail all'user che è stato segnalato, precisando che la segnalazione verrà analizzata dall'Admin e verranno prese le giuste precauzioni |
|           4           | Admin   | Analizza la segnalazione ricevuta.                                                                                                                 |
|           5           | Sistema | Modifica lo stato dell'account dell'utente a SOSPESO                                                                                               |
|           6           | Sistema | Invia una mail all'utente a cui è stato sospeso l'account, precisando che l'account potrebbe essere sboccato (a seconda della segnalazione)|        |                                                                                                                                                   |
 Termina il caso d'uso |

## Eccezione 4.a
 
|         Passo         | Attore  | Azione                                                                       |
|:---------------------:|:--------|:-----------------------------------------------------------------------------|
|         4a.1          | Admin   | Analizzando la segnalazione, ritiene che l'utente non debba essere sospeso   |
|         4a.2          | Sistema | Inoltra una mail all'user che è stato segnalato, aggiornandolo sul fatto che a seguito di controlli si è ritenuto opportuno non sospendere l'account all'utente|
| Termina il caso d'uso |
