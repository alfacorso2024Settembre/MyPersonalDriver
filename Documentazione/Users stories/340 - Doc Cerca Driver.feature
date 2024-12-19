Feature: Cerca Driver
Come utente registrato,
Voglio cercare i Driver disponibili nella mia zona,
Affinché possa visualizzare i dettagli e selezionarne uno per prenotare una corsa.

Scenario: Ricerca Driver con successo

Given l'utente è registrato e autenticato nel sistema
When seleziona un orario di prenotazione
And inserisce un luogo di prenotazione (posizione attuale o indirizzo scelto)
Then il sistema mostra una lista di Driver disponibili entro 3km dal luogo fornito e nella fascia oraria indicata.

Scenario: Nessun Driver disponibile

Given l'utente è registrato e autenticato nel sistema
When seleziona un orario di prenotazione
And inserisce un luogo di prenotazione
And non ci sono Driver disponibili nella fascia oraria e nel raggio indicato
Then il sistema mostra un messaggio "Nessun driver disponibile".

Scenario: Visualizzazione dei dettagli del Driver

Given l'utente ha effettuato una ricerca con successo
When seleziona un Driver dalla lista mostrata
Then il sistema visualizza i dettagli del Driver, incluse recensioni e informazioni sull'affidabilità.

Scenario: Prenotazione del Driver

Given l'utente ha visualizzato i dettagli di un Driver
When clicca su "Prenota"
Then il sistema avvia il caso d'uso "Prenota Corsa".