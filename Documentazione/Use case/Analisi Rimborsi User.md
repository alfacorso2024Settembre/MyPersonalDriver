# Rimborsi User
### Nome caso d'uso:
Sospensione driver dopo multa
### Attore primario:
Driver, User
### Parti interessate:
//
### Pre-condizioni:
L’User deve aver rilasciato un deposito cauzionale prenotando una corsa
### Garanzie di successo o post-condizioni:
L’User ha cancellato la prenotazione 21 minuti o più prima della corsa/Il driver ha cancellato la corsa

## Scenario principale di successo:
|         Passo         | Attore  | Azione                                                  |
|:---------------------:|:--------|:--------------------------------------------------------|
|           1           | User    | L’User prenota una corsa                                |
|           2           | Sistema | Manda la richiesta ai Driver disponibili                |
|           3           | Driver  | Accetta la richiesta                                    |
|           4           | Sistema | Attende l’inizio della Corsa                            |
|           5           | User    | Disdice la corsa 21 minuti prima della partenza (o più) |
|           6           | Sistema | Rimborsa l’User del 100% del deposito cauzionale        | |
 Termina il caso d'uso |

## Estensione 5a

|         Passo         | Attore  | Azione                                                                                                                                                          |
|:---------------------:|:--------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------|
|         5a.1          | Driver  | Disdice la corsa (no limiti di tempo)                                                                                                                           |                                                                                    |
|         5a.2          | Sistema | Rimborsa l’User del 100% del deposito cauzionale                                                                                                                |
| Termina il caso d'uso |


