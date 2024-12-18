Feature: Invio segnalazione
    Come utente registrato
    Voglio inoltrare una segnalazione
    Per segnalare all'admin una problematica che ho riscontrato

  Background:
    Given l'utente ha effettuato correttamente l'accesso alla piattaforma
    And ha effettuato una corsa
    And ha riscontrato un problema durante la corsa
    And l'utente entra nella sezione delle corse effettuate
    And il sistema mostra la lista delle corse effettuate
    And l'utente seleziona il tasto "Report" di fianco la corsa da segnalare
    And il sistema mostra il form dei report da compilare
    And l'utente clicca sul dropdown di "Report Type"

  Scenario Outline: Invio segnalazione all'admin
    Given l'utente seleziona <report_type>
    And l'utente seleziona una foto da allegare alla segnalazione
    And l'utente inserisce una descrizione del problema
    And l'utente seleziona il tasto "Confirm"
    And il sistema fa apparire un popup "Do you want to send the report?"
    When l'utente seleziona il tasto "Ok"
    Then il sistema mostra il popup "Report send!"
    And il sistema inoltra una mail all'admin con il resoconto della segnalazione
    And il sistema inoltra una mail all'utente con il resoconto della segnalazione

    Examples:
      | report_type |
      | Accident    |
      | Payment     |
      | Behavior    |
      | Fine        |
      | Other       |

  Scenario Outline: Mancata descrizione
    Given l'utente seleziona <report_type>
    But l'utente non lascia una descrizione del problema riscontrato
    When l'utente seleziona il tasto "Confirm"
    Then il sistema fa apparire un popup "You can't send a report without a description"
    And il sistema mostra il form da compilare

    Examples:
      | report_type |
      | Accident    |
      | Payment     |
      | Behavior    |
      | Fine        |
      | Other       |
  
  Scenario Outline: Cancella operazione
    Given l'utente clicca il tasto "Cancel"
    Then il sistema mostrerà la schermata della Rides

  Scenario Outline: Cancella conferma report
    Given l'utente seleziona <report_type>
    And l'utente seleziona una foto da allegare alla segnalazione
    And l'utente inserisce una descrizione del problema
    And l'utente seleziona il tasto "Confirm"
    And il sistema fa apparire un popup "Do you want to send the report?"
    When l'utente clicca sul tasto "Cancel"
    Then il sistema mostra il form da compilare

    Examples:
      | report_type |
      | Accident    |
      | Payment     |
      | Behavior    |
      | Fine        |
      | Other       |

  Scenario: Mancata foto in Fine
    Given l'utente seleziona "Fine"
    And l'utente inserisce una descrizione del problema
    But l'utente non inserisce una foto della multa
    When l'utente seleziona il tasto "Confirm"
    Then il sistema fa apparire un popup "You can't send this report without a fine's image"
    And il sistema mostra il form da compilare
