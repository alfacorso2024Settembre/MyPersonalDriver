# Rimborsi Driver
### Nome caso d'uso:
Rimborsi Driver
### Attore primario:
Driver, User
### Parti interessate:
//
### Pre-condizioni:
L’User deve aver rilasciato un deposito cauzionale prenotando una corsa
### Garanzie di successo o post-condizioni:
L’User ha cancellato la prenotazione 20 minuti prima della corsa

## Scenario principale di successo:

|         Passo         | Attore  | Azione                                                                                                              |
|:---------------------:|:--------|:--------------------------------------------------------------------------------------------------------------------|
|           1           | User    | Prenota una corsa                                                                                                   |
|           2           | Sistema | Manda la richiesta ai Driver disponibili                                                                            |
|           3           | Driver  | Accetta la richiesta                                                                                                |
|           4           | Sistema | Attende l’inizio della Corsa                                                                                        |
|           5           | User    | disdice la corsa 20 minuti prima della partenza (o meno                                                             |
|           6           | Sistema | Rimborsa il Driver del 50% della quota del Deposito cauzionale e l’User del 50% della quota del Deposito cauzionale | |
 Termina il caso d'uso |