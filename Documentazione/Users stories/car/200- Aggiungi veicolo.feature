Feature: Aggiungi Veicolo
Come utente registrato,
Voglio aggiungere un veicolo al mio account,
Affinché possa associare un'assicurazione che sarà verificata dall'admin.

Scenario: Aggiunta di un nuovo veicolo con dati validi

Given l'utente è registrato e autenticato sulla piattaforma My Personal Driver
And si trova sulla propria dashboard
When seleziona l'opzione "Aggiungi veicolo"
And inserisce i dati del veicolo (es. targa, modello, marca, anno)
And carica una foto valida dell'assicurazione
Then il sistema verifica il formato dei dati inseriti
And il sistema verifica il formato dell'immagine caricata
And salva i dati del veicolo
And informa l'utente che il veicolo è stato aggiunto correttamente.

Scenario: Inserimento dati del veicolo con formato non valido

Given l'utente è registrato e autenticato sulla piattaforma My Personal Driver
And si trova nella pagina "Aggiungi veicolo"
When inserisce dati del veicolo in un formato non corretto
Then il sistema informa l'utente che i dati non sono validi
And richiede la correzione dei dati
And ritorna alla pagina di inserimento dei dettagli.

Scenario: Caricamento foto assicurazione con formato non supportato

Given l'utente è registrato e autenticato sulla piattaforma My Personal Driver
And si trova nella pagina "Aggiungi veicolo"
When carica una foto dell'assicurazione in un formato non supportato (es. PDF invece di JPG/PNG)
Then il sistema informa l'utente che il formato dell'immagine non è valido
And richiede il caricamento di una foto in un formato supportato
And ritorna alla pagina di caricamento dell'assicurazione.
Scenario: Visualizzazione dei veicoli dell'utente
Given l'utente è registrato e autenticato sulla piattaforma My Personal Driver
When accede alla dashboard del proprio account
Then il sistema mostra una tabella con i dati relativi ai veicoli già registrati
And include opzioni per aggiungere o modificare i veicoli.

Scenario: Modifica dei dati di un veicolo

Given l'utente è registrato e autenticato sulla piattaforma My Personal Driver
And si trova nella sezione della tabella dei veicoli
When seleziona un veicolo esistente per modificarlo
And aggiorna i dati o carica una nuova foto dell'assicurazione
Then il sistema verifica il formato dei nuovi dati e della foto
And salva le modifiche effettuate
And informa l'utente che le modifiche sono state salvate correttamente.