Feature: Navigazione della sezione del profilo sul sito MyPersonalDriver
  L'utente accede alla sezione del profilo personale dove visualizza i suoi dati.

Background:
  Given l'utente accede alla pagina personale "http://localhost:4200/profile/1"

  Scenario: 
    And l'utente clicca sul bottone "Modify your profile"
    Then l'utente viene reindirizzato alla pagina "http://localhost:4200/modifyProfile/1"

  Scenario:
    And 
    Then la pagina deve mostrare il form che contiene i dati che può modificare "<menuTitle>"