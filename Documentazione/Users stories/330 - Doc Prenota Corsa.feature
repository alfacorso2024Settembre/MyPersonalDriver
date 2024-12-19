Feature: Prenota Corsa
Come utente autenticato,
Voglio prenotare un Driver disponibile,
Affinché possa organizzare una corsa utilizzando una delle mie auto registrate.

Scenario: Prenotazione di una corsa con successo

Given l'utente è registrato e autenticato nel sistema
And ha almeno una macchina registrata con un'assicurazione valida
And ha effettuato una ricerca e trovato almeno un Driver disponibile
When seleziona un'auto per la corsa
And sceglie un Driver disponibile
Then il sistema verifica che l'assicurazione dell'auto sia valida
And invia una notifica e una email al Driver
And il Driver accetta la richiesta
And il sistema avvia il caso d'uso "Effettua Deposito".

Scenario: Il Driver rifiuta la richiesta

Given l'utente ha selezionato un Driver per la corsa
When il Driver rifiuta la richiesta
Then il sistema invia una notifica all'utente indicando che il Driver non ha accettato la corsa
And avvia il caso d'uso "Cerca Driver" per trovare un altro Driver disponibile.

Scenario: Conflitto di prenotazione - Il Driver accetta un'altra corsa

Given l'utente ha selezionato un Driver per la corsa
When il Driver accetta un'altra corsa contemporaneamente
Then il sistema informa l'utente che qualcosa è andato storto
And avvia il caso d'uso "Cerca Driver" per trovare un altro Driver disponibile.

Scenario: Conflitto di stato - Il Driver diventa non disponibile

Given l'utente ha selezionato un Driver per la corsa
When il Driver modifica il proprio stato a "non disponibile" durante il processo
Then il sistema informa l'utente che qualcosa è andato storto
And avvia il caso d'uso "Cerca Driver" per trovare un altro Driver disponibile.

Scenario: Nessun Driver disponibile trovato

Given l'utente ha effettuato una ricerca per Driver disponibili
When non ci sono Driver disponibili
Then il sistema informa l'utente che non ci sono Driver al momento
And suggerisce di effettuare una nuova ricerca più tardi.
