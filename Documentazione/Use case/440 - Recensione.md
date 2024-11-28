# Recensione

## Attori:
Utente (user o driver)

## Descrizione:
A corsa terminata, viene data la possibilità a User e Driver di lasciare una recensione sulla corsa con la possibilità di scegliere da 1 a 5 stelle(*)

## Precondizioni:
- L'utente deve essere registrato e autenticato.
- La corsa che coinvolge l'utente è conclusa.
- L'utente desidera lasciare una recensione.

## Scenario base:
| Passo | Attore   | Azione                                                                                        |
|:-----:|:---------|:----------------------------------------------------------------------------------------------|
|   1   | Utente   | Lascia una recensione                                                                         |
|   2   | Driver   | Lascia una recensione                                                                         |
|   3   | Sistema  | Aggiunge le valutazioni                                                                       |
|   4   | Sistema  | Aggiorna la media delle valutazioni dell'utente e del driver                                  |

## Scenario alternativo 1.1
| Passo | Attore  | Azione                                          |
|:-----:|:--------|:------------------------------------------------|
|   1   | Utente  | Non lascia la recensione                        |
|   2   | Driver  | Lascia una recensione                           |
|   3   | Sistema | Aggiunge la valutazione del driver              |
|   4   | Sistema | Aggiorna la media delle valutazioni dell'utente |


## Scenario alternativo 2.1  
| Passo | Attore  | Azione                                          |
|:-----:|:--------|:------------------------------------------------|
|   1   | Utente  | Lascia una recensione                           |
|   2   | Driver  | Non lascia la recensione                        |
|   3   | Sistema | Aggiunge la valutazione dell'utente             |
|   4   | Sistema | Aggiorna la media delle valutazioni del driver  |

# Components

Review_Stelle: componente contenente 5 stelle che cambiano aspetto in base a quale viene cliccata dall'utente. Simboleggiano il rating della recensione e non possono essere vuoti

Review_Input: componente che costituisce la parte main della pagina html di inserzione review. Contiene il componente Review_Stelle, una textbox in cui l'utente può inserire la giustificazione per il rating che vuole inserire (opzionale) e due bottoni per cancellare o confermare la review.

Note:
(*) Si può considerare l'opzione di aggiungere un sistema di reputazione sia per gli utenti che per i driver