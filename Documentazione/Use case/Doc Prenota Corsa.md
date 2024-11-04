# Use Case: Prenota Corsa

## Attore primario:

Utente

## Parti Interessate:

Utente, Driver

## Descrizione:

L'utente desidera prenotare un Driver disponibile dalla ricerca precedentemente fatta.

## Precondizioni:

- L'utente deve essere registrato e autenticato nel sistema
- L'utente deve aver precedentemente ricercato un Driver e la ricerca deve aver prodotto almeno 1 risultato
- L'utente clicca su prenota

## Scenario base:

| Step | Attore                                                       | Sistema                                                                      |
| ---- | ------------------------------------------------------------ | ---------------------------------------------------------------------------- |
| 1    | L'utente sceglierà la macchina che il driver dovrà guidare   | Verificherà se l'utente ha almeno una macchina, altrimenti potrà aggiungerla |
| 2    | Il sistema verificherà che l'assicurazione sia ancora valida | Partirà il caso d'uso "Verifica Documenti"                                   |
| 3    | Il driver accetta la richiesta                               | Partirà il caso d'uso "Accetta Prenotazione"                                 |
| 4    | Il sistema fa partire il pagamento                           | Partirà il caso d'uso "Effettua Deposito"                                    |

## Variante 1:

| Step | Attore                                                                     | Sistema                                      |
| ---- | -------------------------------------------------------------------------- | -------------------------------------------- |
| 1    | Il driver rifiuta la richiesta                                             | Partirà il caso d'uso "Accetta Prenotazione" |
| 2    | Se desidera l'utente può cercare altri driver disponibili dal cerca Driver | Partirà il caso d'uso "Cerca Driver"         |

## Eccezione 1.a:

| Step | Attore                                                                    | Sistema                                                          |
| ---- | ------------------------------------------------------------------------- | ---------------------------------------------------------------- |
| 1    | L'utente seleziona un Driver e lo Prenota                                 | Il Driver accetta o rimuove la sua disponibilità in quel momento |
|      | viene inviato un messaggio di errrore e l'utente può cercare altri Driver |                                                                  |

## Eccezione Scenario base.a

| Step | Attore                                                       | Sistema                                                                      |
| ---- | ------------------------------------------------------------ | ---------------------------------------------------------------------------- |
| 1    | L'utente sceglierà la macchina che il driver dovrà guidare   | Verificherà se l'utente ha almeno una macchina, altrimenti potrà aggiungerla |
| 2    | Il sistema verificherà che l'assicurazione sia ancora valida | Partirà il caso d'uso "Verifica Documenti"                                   |
| 3    | Verifica Documenti fallisce perche l'assicurazione è scaduta | Viene mostrato il messaggio " Assicurazione Scaduta "                        |
