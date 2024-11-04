# Effettua Pagamento
### Nome caso d'uso:
Effettua Pagamento
### Attore primario:
Driver, User
### Descrizione:
L'utente effettua il pagamento con le modalità disponibili (*) al termine della corsa, l'importo viene dunque sottratto dal conto dell'utente e verrà versato sul conto del driver.
### Pre-condizioni:
L'utente deve essere registrato e autenticato.
Il driver deve essere registrato, autenticato e verificato.
L'utente ha prenotato una corsa.
L'utente ha depositato la quota iniziale.
Il driver ha accettato la corsa.
L'utente e il driver hanno effettuato la corsa correttamente.

## Scenario principale di successo:

|         Passo         | Attore  | Azione                                                            |
|:---------------------:|:--------|:------------------------------------------------------------------|
|           1           | Sistema | Controlla che l'importo dovuto sia maggiore dell'importo iniziale |
|           2           | Sistema | Addebita l'utente del credito dovuto                              |
|           3           | Utente  | Integra il pagamento                                              |
|           4           | Sistema | Esegue pagamento                                                  |
|           5           | Driver  | Riceve il pagamento                                               |
| Termina il caso d'uso |

## Estensione 1a

|         Passo         | Attore      | Azione                                                          |
|:---------------------:|:------------|:----------------------------------------------------------------|
|         1a.1          | Sistema     | Controlla che l'importo dovuto sia minore dell'importo iniziale |                                                                                    
|         1a.2          | Sistema     | Rimborsa l'utente del credito dovuto                            |
|         1a.3          | Utente      | Riceve il rimborso                                              |
|         1a.4          | Sistema     | Esegue pagamento                                                |
|         1a.5          | Driver      | Riceve il pagamento                                             |
| Termina il caso d'uso |

## Estensione 1b
|         Passo         | Attore      | Azione                                                        |
|:---------------------:|:------------|:--------------------------------------------------------------|
|         1b.1          | Sistema     | Controlla che l'importo dovuto è uguale dell'importo iniziale |
|         1b.2          | Sistema     | Esegue pagamento                                              |
|         1b.3          | Driver      | Riceve il pagamento                                           |
| Termina il caso d'uso |


Note:
(*) da vedere in dettaglio successivamente
(**) calcolato per la distanza e il tempo, con aggiunta di tariffa in base alla fascia oraria e al giorno. (da definire nel dettaglio)
Un esempio di calcolo dell'importo può essere:
-Tariffa iniziale: è l'importo minimo che si deve pagare, che si somma automaticamente all'iniziare la corsa.
-Tariffa incrementale/Scatto: è l'incremento che corrisponde a ciascuna frazione di tempo/distanza.
-Distanza/Metri: al completare la percorrenza indicata (al di sopra di una velocità stabilita o di crociera) si calcola un incremento (scatto).
-Tempo/Secondi: al trascorrere di questo intervallo di tempo (al di sotto della velocità stabilita o di crociera) si calcola un incremento (scatto).
La condizione per uno scatto è:
	metri percorsi/distanza di uno scatto + secondi di attesa/tempo di uno scatto >= 1