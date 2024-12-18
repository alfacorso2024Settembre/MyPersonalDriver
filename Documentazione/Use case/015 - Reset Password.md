# Use Case: Reset Password

## Attori:

- User

## Precondizioni:

- L'email deve rispettare i requisiti di formato.
- La nuova password deve rispettare i vincoli definiti.
- La conferma password deve essere uguale alla nuova password.

## Postcondizioni:

- La richiesta di reset della password viene inviata al sistema.
- Viene inviata un'email di conferma al destinatario con un link per il reset della password.

## Scenario Nominale:

Un user richiede il reset della password, inserisce la nuova password e la conferma, e riceve un'email di conferma per completare la procedura.

### Requisiti per la Password:

- Minimo 8 caratteri.
- Almeno 1 lettera maiuscola.
- Almeno 1 numero.
- Almeno 1 carattere speciale.

### Requisiti per l'Email:

- Deve essere in un formato email valido (es. example@email.com).

## Varianti:

- **Reset Password con successo:** L'email e le password soddisfano i requisiti e il link di conferma viene inviato.
- **Reset Password con dati errati:** L'email o la password non rispettano i requisiti; il sistema notifica l'errore.

## Eccezioni:

- L'email non è associata ad alcun account esistente.
- La nuova password e la conferma password non coincidono.
- L'email o la nuova password non rispettano i vincoli di formato.

### Scenario 2.1: Reset Password (Con Successo)

**Precondizione:** L'user possiede un indirizzo email.

**Postcondizione:** Un'email con il link di conferma viene inviata all'user.

| Passo | Descrizione                                                                                             |
| ----- | ------------------------------------------------------------------------------------------------------- |
| 1     | User avvia l'applicazione e seleziona l'opzione "Reset Password".                                       |
| 2     | User inserisce l'indirizzo email, la nuova password e la conferma password nei campi rispettivi.        |
| 3     | Sistema verifica che l'email sia in un formato valido.                                                  |
| 4     | Sistema verifica che la nuova password rispetti i requisiti e coincida con la conferma password.        |
| 5     | Sistema verifica che l'email sia associata a un account esistente.                                      |
| 6     | Tutti i controlli superati, il sistema invia un'email con il link per completare il reset della password.|

### Scenario 2.2: Reset Password (Email Non Valida)

**Precondizione:** L'user possiede un indirizzo email.

**Postcondizione:** Il sistema notifica che l'email non rispetta i requisiti o non è associata a un account esistente.

| Passo | Descrizione                                                                                             |
| ----- | ------------------------------------------------------------------------------------------------------- |
| 1     | User avvia l'applicazione e seleziona l'opzione "Reset Password".                                       |
| 2     | User inserisce l'indirizzo email, la nuova password e la conferma password nei campi rispettivi.        |
| 3     | Sistema verifica che l'email sia in un formato valido.                                                  |
| 4     | L'email non rispetta i requisiti o non è associata a un account esistente; il sistema mostra un errore. |

### Scenario 2.3: Reset Password (Password Errata)

**Precondizione:** L'user possiede un indirizzo email.

**Postcondizione:** Il sistema notifica che la password non rispetta i requisiti o non coincide con la conferma password.

| Passo | Descrizione                                                                                             |
| ----- | ------------------------------------------------------------------------------------------------------- |
| 1     | User avvia l'applicazione e seleziona l'opzione "Reset Password".                                       |
| 2     | User inserisce l'indirizzo email, la nuova password e la conferma password nei campi rispettivi.        |
| 3     | Sistema verifica che la password rispetti i requisiti.                                                  |
| 4     | La password non rispetta i requisiti o non coincide con la conferma password; il sistema mostra un errore. |

## Componenti:

- **NAVBAR:** Barra di navigazione elementare con un pulsante che riporta alla pagina di login.
- **FOOTER:** Presente in tutte le pagine, contiene un pulsante per visualizzare i dati dell'applicazione (email, numero di telefono, indirizzo, ecc.).
- **Reset Password FORM:** Form in cui l'user può inserire l'email, la nuova password e la conferma password. Include una validazione dei campi:
  - Se i campi soddisfano i requisiti, accanto a essi appare un'icona di check verde.
  - In caso di errore, viene mostrato un messaggio con i dettagli dell'errore.
