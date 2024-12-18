Feature: controllo di un documento
    come admin 
    voglio controllare i documenti da validare
    
    Background:
        Given l'utente è registrato sulla piattaforma MyPersonalDriver
        And l'utente è loggato come admin 
        And l'utente clicca sul bottone "Controlla documenti"

    Scenario: nessun nuovo documento
        And l'utente viene reindirizzato alla pagina "Documenti"
        And viene mostrato un popup con la scritta "Nessun documento disponibile"
        And l'utente clicca il bottone "Torna indietro"
        Then l'utente viene reindirizzato alla pagina home

    Scenario: accettazione di un documento
        And viene visualizzata la tabella con i documenti 
        And l'utente clicca il bottone "Visualizza" del documento dell'utente John Driver
        And l'utente viene reindirizzato alla pagina "Documento" che mostra i dettagli del documento selezionato
        And l'utente clicca su "Accetta documento"
        And appare un popup di conferma "Confermi di voler accettare il documento?"
        And l'utente clicca sul bottone "Confirm"
        Then lo stato del documento viene aggiornato in "accepted"

    Scenario: accettazione di un documento con account non attivo
        And viene visualizzata la tabella con i documenti 
        And l'utente clicca il bottone "Visualizza" del documento dell'utente John Driver
        And l'utente viene reindirizzato alla pagina "Documento" che mostra i dettagli del documento selezionato
        And l'utente clicca su "Accetta documento"
        But appare un popup con la scritta "Impossibile accettare il documento: profilo inattivo o sospeso"
        Then l'utente clicca sul bottone "Torna indietro"
        And il popup viene chiuso

    Scenario: accettazione di un documento con ripensamento
        And viene visualizzata la tabella con i documenti 
        And l'utente clicca il bottone "Visualizza" del documento dell'utente John Driver
        And l'utente viene reindirizzato alla pagina "Documento" che mostra i dettagli del documento selezionato
        And l'utente clicca su "Accetta documento"
        And appare un popup di coonferma "Confermi di voler accettare il documento?"
        And l'utente clicca sul bottone "Cancel"
        Then il popup viene chiuso  

    Scenario Outline: rifiuto di un documento 
        And viene visualizzata la tabella con i documenti 
        And l'utente clicca il bottone "Visualizza" del documento dell'utente John Driver
        And l'utente viene reindirizzato alla pagina "Documento" che mostra i dettagli del documento selezionato
        And l'utente clicca su "Rifiuta documento"
        And l'utente viene reindirizzato alla pagina "Rifiuta documento"
        And l'utente clicca sul dropdown
        And l'utente sceglie come motivo del rifiuto {reject_reason}
        And l'utente clicca sul bottone "Invia"
        And appare un popup di conferma "Confermi di voler rifiutare il documento?"
        And l'utente clicca sul bottone "Confirm"
        Then l'email viene inviata allo user prorietario del documento
        And lo stato del documento viene aggiornato in "rejected"
        And viene visualizzato un popup di info con l'esito positivo dell'invio

    Scenario Outline: rifiuto di un documento 
        And viene visualizzata la tabella con i documenti 
        And l'utente clicca il bottone "Visualizza" del documento dell'utente John Driver
        And l'utente viene reindirizzato alla pagina "Documento" che mostra i dettagli del documento selezionato
        And l'utente clicca su "Rifiuta documento"
        And l'utente viene reindirizzato alla pagina "Rifiuta documento"
        And l'utente clicca sul dropdown
        And l'utente sceglie come motivo del rifiuto <reject_reason>
        And l'utente clicca sul bottone "Invia"
        And appare un popup di conferma "Confermi di voler rifiutare il documento?"
        And l'utente clicca sul bottone "Confirm"
        Then l'email viene inviata allo user prorietario del documento
        And lo stato del documento viene aggiornato in "rejected"
        But viene visualizzato un popup di info con l'esito positivo dell'invio

        Examples:
      | reject_reason           |
      | Immagine non leggibile  |
      | Documento scaduto       |
      | Tipologia non corretta  |
      | Dati non corrispondono  |
      | Altro                   |

    Scenario: rifiuto di un documento con descrizione
        And viene visualizzata la tabella con i documenti 
        And l'utente clicca il bottone "Visualizza" del documento dell'utente John Driver
        And l'utente viene reindirizzato alla pagina "Documento" che mostra i dettagli del documento selezionato
        And l'utente clicca su "Rifiuta documento"
        And l'utente viene reindirizzato alla pagina "Rifiuta documento"
        And l'utente clicca sul dropdown
        And l'utente sceglie come motivo del rifiuto "Altro"
        And l'utente inserisce la descrizione "Utente precedentemente eliminato dalla piattaforma in seguito a segnalazioni"
        And l'utente clicca sul bottone "Invia"
        And appare un popup di conferma "Confermi di voler rifiutare il documento?"
        And l'utente clicca sul bottone "Confirm"
        Then l'email viene inviata allo user prorietario del documento
        And lo stato del documento viene aggiornato in "rejected"

    Scenario: rifiuto di un documento con errore descrizione mancante
        And viene visualizzata la tabella con i documenti 
        And l'utente clicca il bottone "Visualizza" del documento dell'utente John Driver
        And l'utente viene reindirizzato alla pagina "Documento" che mostra i dettagli del documento selezionato
        And l'utente clicca su "Rifiuta documento"
        And l'utente viene reindirizzato alla pagina "Rifiuta documento"
        And l'utente clicca sul dropdown
        And l'utente sceglie come motivo del rifiuto "Altro"
        But l'utente non inserisce la descrizione con la motivazione
        And l'utente clicca sul bottone "Invia"
        And appare un popup di info "E' necessaria una descrizione del problema"
        And l'utente clicca sul bottone "Torna indietro"
        And l'utente inserisce la descrizione "Utente precedentemente eliminato dalla piattaforma in seguito a segnalazioni"
        And l'utente clicca sul bottone "Invia"
        And appare un popup di conferma "Confermi di voler rifiutare il documento?"
        And l'utente clicca sul bottone "Confirm"
        Then l'email viene inviata allo user prorietario del documento
        And lo stato del documento viene aggiornato in "rejected"
        

    Scenario: rifiuto di un documento con account non attivo
        And viene visualizzata la tabella con i documenti 
        And l'utente clicca il bottone "Visualizza" del documento dell'utente John Driver
        And l'utente viene reindirizzato alla pagina "Documento" che mostra i dettagli del documento selezionato
        And l'utente clicca su "Rifiuta documento"
        But appare un popup con la scritta "Impossibile accettare il documento: profilo inattivo o sospeso"
        Then l'utente clicca sul bottone "Torna indietro"
        And il popup viene chiuso

    Scenario: rifiuto di un documento con ripensamento
        And viene visualizzata la tabella con i documenti 
        And l'utente clicca il bottone "Visualizza" del documento dell'utente John Driver
        And l'utente viene reindirizzato alla pagina "Documento" che mostra i dettagli del documento selezionato
        And l'utente clicca su "Rifiuta documento"
        And l'utente viene reindirizzato alla pagina "Rifiuta documento"
        And l'utente clicca sul dropdown
        And l'utente sceglie il motivo del rifiuto "Documento scaduto"
        And l'utente clicca sul bottone "Invia"
        And appare un popup di conferma "Confermi di voler rifiutare il documento?" 
        But l'utente clicca sul bottone "Cancel"
        Then il popup viene chiuso
