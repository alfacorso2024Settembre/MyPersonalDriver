Feature: Modifica dati del veicolo
Come utente registrato,
Voglio modificare i dati relativi al mio veicolo,
Affinché possa aggiornare le informazioni e mantenere valide le mie assicurazioni e documenti.

Scenario: Modifica dei dati del veicolo con successo

Given l'utente è registrato e autenticato sulla piattaforma My Personal Driver
When accede al proprio account
And seleziona l'opzione "Modifica Account"
And accede alla sezione "Modifica dati del veicolo"
And inserisce i nuovi dati del veicolo, incluso il nome del nuovo proprietario
And carica la foto dell'assicurazione aggiornata
Then il sistema verifica il formato corretto dei dati e della foto
And carica la modifica, cambiando lo stato del documento in "sospeso"
And conferma all'utente che la modifica è stata effettuata con successo.

Scenario: Errore nel formato dei dati del veicolo

Given l'utente sta aggiornando i dati del veicolo
When inserisce un formato non valido per il nome del proprietario
Then il sistema mostra un messaggio di errore
And richiede all'utente di reinserire il dato corretto.

Scenario: Errore nel formato della foto dell’assicurazione

Given l'utente sta caricando la foto dell'assicurazione aggiornata
When il formato della foto non è supportato dal sistema
Then il sistema mostra un messaggio di errore
And richiede all'utente di caricare una foto in un formato valido.

Scenario: Modifica rifiutata dall’Admin

Given l'utente ha completato la modifica dei dati del veicolo
When l'Admin verifica manualmente i documenti caricati e li rifiuta
Then il sistema informa l'utente che la modifica non è stata approvata
And richiede ulteriori azioni da parte dell'utente (es. caricare documenti corretti).