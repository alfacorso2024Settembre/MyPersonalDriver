# Segnalazione driver dopo multa
### Nome caso d'uso:
Sospensione driver dopo multa
### Attore primario:
Driver, User
### Parti interessate:
Admin
### Pre-condizioni:
L’Admin ha analizzato una multa e ritiene che il Driver debba prendersene le responsabilità
### Garanzie di successo o post-condizioni: 
Il Driver inoltra i documenti relativi al pagamento della multa

## Scenario principale di successo:
|         Passo         | Attore  | Azione                                                                                                                                                                                                                                                                     |
|:---------------------:|:--------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|           1           | User    | Invia una segnalazione per multa ricevuta all'Admin                                                                                                                                                                                                                        |
|           2           | Sistema | Inoltra la segnalazione all'Admin                                                                                                                                                                                                                                          |
|           3           | Sistema | Inoltra una mail al driver aggiornandolo sulla segnalazione ricevuta                                                                                                                                                                                                       |
|           4           | Admin   | Analizza la segnalazione e ritiene che la multa debba essere a carico del Driver                                                                                                                                                                                           |
|           5           | Sistema | Manda una notifica e una mail al Driver con tutte le informazioni necessarie e gli sospende l’account, specificando che potrà usufruire nuovamente del servizio nel momento in cui il Driver invierà per email tutti i documenti relativi alla presa in carico della multa |
|           6           | Sistema | Manda una notifica e una mail all'utente che ha inviato la segnalazione, informandolo che a seguito di controlli l'Admin ritiene che la multa sia a carico del Driver e bisogna attendere la presa in carico                                                               |
|           7           | Sistema | Sospende l'account del Driver                                                                                                                                                                                                                                              |
| Termina il caso d'uso |         |                                                                                                                                                                                                                                                                            |

## Estensione 4.a

|         Passo         | Attore  | Azione                                                                                                                                                          |
|:---------------------:|:--------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------|
|         4a.1          | Admin   | Analizza la segnalazione e ritiene che la multa non sia a carico del Driver                                                                                     |                                                                                    |
|         4a.2          | Sistema | Manda una notifica e una mail al driver, aggiornandolo sul fatto che la multa ricevuta non sarà a carico suo                                                    |
|         4a.3          | Sistema | Manda una notifica e una mail all'utente che ha inviato la segnalazione, specificando che i dati non coincidono con la corsa e che non sarà a carico del Driver |
| Termina il caso d'uso |


