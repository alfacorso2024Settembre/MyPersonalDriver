# Use Case: Login

## Attori:

- User
- Driver
- Admin

## Precondizioni:

L'attore ha già un account.

## Postcondizioni:

L'attore è loggato nell'applicazione.

## Scenario Nominale:

L'attore inserisce email e password per effettuare il login.

## Eccezioni:

- L'email non è presente nel database.
- L'email esiste ma la password è errata.
- L'attore è già loggato.
- L'email e password hanno un formato errato.

### Scenario 2.1: Login (Con Successo)

**Precondizione:** L'attore ha un account.

**Postcondizione:** L'attore è loggato.

| Passo | Descrizione                                           |
| ----- | ----------------------------------------------------- |
| 1     | Attore richiede il login.                             |
| 2     | Sistema chiede email e password.                      |
| 3     | Sistema verifica che email e password siano corretti. |
| 4     | L'attore può accedere alle informazioni.              |

### Scenario 2.2: Account Non Registrato

**Precondizione:** L'attore non ha un account.

**Postcondizione:** Viene mostrato un messaggio di errore.

| Passo | Descrizione                                                                              |
| ----- | ---------------------------------------------------------------------------------------- |
| 1     | L'attore richiede il login.                                                              |
| 2     | Sistema chiede email e password.                                                         |
| 3     | Sistema verifica le credenziali, ma l'email non è associata a nessun account.            |
| 4     | Viene mostrato un messaggio "L'email non è corretta o non è associata a nessun account". |

### Scenario 2.3: Password Errata

**Precondizione:** L'attore ha un account.

**Postcondizione:** Viene mostrato un messaggio di errore.

| Passo | Descrizione                                                           |
| ----- | --------------------------------------------------------------------- |
| 1     | L'attore richiede il login.                                           |
| 2     | Sistema chiede email e password.                                      |
| 3     | Sistema verifica le credenziali, ma la password non è corretta.       |
| 4     | Viene mostrato un messaggio "Password errata! Dimenticato password?". |
| 5     | Utente puo reimpostare la password                                    |

### Scenario 2.4: Password Dimenticata

**Precondizione:** L'attore ha un account.

**Postcondizione:** L'attore riceve un'email per reimpostare la password.

| Passo | Descrizione                                                                                             |
| ----- | ------------------------------------------------------------------------------------------------------- |
| 1     | L'attore richiede il login.                                                                             |
| 2     | Sistema chiede email e password.                                                                        |
| 3     | L'attore seleziona l'opzione "Password dimenticata?".                                                   |
| 4     | Sistema richiede l'email associata all'account.                                                         |
| 5     | L'attore inserisce l'email e invia la richiesta.                                                        |
| 6     | Sistema verifica se l'email è associata a un account.                                                   |
| 7     | Se l'email è valida, il sistema invia un'email con un link per reimpostare la password.                 |
| 8     | L'attore apre l'email ricevuta e clicca sul link per reimpostare la password.                           |
| 9     | Sistema chiede di inserire una nuova password.                                                          |
| 10    | L'attore inserisce la nuova password e conferma.                                                        |
| 11    | Sistema aggiorna la password e notifica l'attore che la reimpostazione è stata completata con successo. |

### Scenario 2.5: Password Dimenticata (Email Errata)

**Precondizione:** L'attore non ha accesso all'email associata al proprio account.

**Postcondizione:** Viene mostrato un messaggio di errore.

| Passo | Descrizione                                                                                                       |
| ----- | ----------------------------------------------------------------------------------------------------------------- |
| 1     | L'attore richiede il login.                                                                                       |
| 2     | Sistema chiede email e password.                                                                                  |
| 3     | L'attore seleziona l'opzione "Password dimenticata?".                                                             |
| 4     | Sistema richiede l'email associata all'account.                                                                   |
| 5     | L'attore inserisce l'email e invia la richiesta.                                                                  |
| 6     | Sistema verifica se l'email è associata a un account.                                                             |
| 7     | L'email non è valida, il sistema mostra un messaggio "L'email non è corretta o non è associata a nessun account". |

### Scenario 2.6: Login (Format Dati errati)

| Passo | Descrizione                                                                    |
| ----- | ------------------------------------------------------------------------------ |
| 1     | Attore avvia l'applicazione.                                                   |
| 2     | Attore seleziona l'opzione "Login".                                            |
| 3     | Attore inserisce email e passworda.                                            |
| 4     | Sistema controlla se l'email e la password, rispettano i requisiti.            |
| 5     | Sistema mostra un messaggio di errore che indica l'errore nel campo specifico. |
| 6     | Attore riparte dal passo 3                                                     |
