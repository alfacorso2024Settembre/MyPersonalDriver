# Cancella prenotazioni scadute
### Nome caso d'uso:
Cancella prenotazioni scadute
### Attore primario:
N/A
### Pre-condizioni:
E passata un ora dalla ultima volta che questo caso d'uso è stato chiamato

## Scenario principale di successo:
| Passo | Attore     | Azione                                                                                                                  |
|:-----:|:-----------|:------------------------------------------------------------------------------------------------------------------------|
|   1   | Sistema    | Effettua una ricerca di tutte le prenotazioni con stato "in sospeso" la cui data e ora sono maggiori della data attuale |
|   2   | Sistema    | Seleziona la prima delle prenotazioni cercate                                                                           |
|   3   | Sistema    | Ritorna il soldi nel deposito al conto dello user (Caso d'uso rimborso user)                                            |
|   4   | Sistema    | Cambia lo stato della prenotazione da "in sospeso" a "cancellato"                                                       |
|   5   | Sistema    | ritorna al punto 2                                                                                                      |
|  Termina il caso d'uso |


## Estensione 2a

|         Passo         | Attore  | Azione                                                                                                |
|:---------------------:|:--------|:------------------------------------------------------------------------------------------------------|
|         2a.1          | Sistema | Non sono più presenti prenotazioni che soddisfano i requisiti, invio messaggio di operazione conclusa |                                                                                    |
| Termina il caso d'uso |

## Estensione 2b

|         Passo         | Attore  | Azione                                 |
|:---------------------:|:--------|:---------------------------------------|
|         2b.1          | Sistema | la prenotazione è stata già cancellata | 
|         2b.2          | Sistema | Torna al punto 1                       |                                       |
| Termina il caso d'uso |
