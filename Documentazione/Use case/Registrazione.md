# Use Case: Registrazione

## Attori:

- User
- Driver

**Nota:** La registrazione dell'admin è gestita separatamente dal team di developer.

## Precondizioni:

- User possiede un indirizzo email e un numero di telefono.
- L'email e la password,numero di telefono,data di nascita devono rispettare i requisiti di formato.
- Utente/Driver devono avere almeno 18 anni.(data corrente - data di nascita)

## Postcondizioni:

- User o driver ha un account nell'applicazione.

## Scenario Nominale:

Un nuovo user o driver sceglie "Register as User" o "Register as Driver", inserisce email,password,nome,cognome,data di nascita e si registra con successo dopo aver confermato l'email.

**Nota**: Se durante la registrazione come driver l'email esiste già nel database con il ruolo di user, il ruolo viene aggiornato a driver.

### Requisiti per la Password:

- Minimo 8 caratteri
- Almeno 1 lettera maiuscola
- Almeno 1 numero
- Almeno 1 carattere speciale

### Requisiti per l'Email:

- Deve essere in un formato email valido (es. example@email.com).

### Requisiti per l numero telefono.

- Deve essere in un formato valido in base del prefix (es Italia. +39xxxxxxxxxx o 0039xxxxxxxxxx)

### Requisiti per la data di nascita.

- Utente deve aver almeno 18 anni.

## Varianti:

- **Registrazione User:** L'user si registra fornendo email,password,nome,cognome,data di nascita , numero telefono.
- **Registrazione Driver:** Il driver deve esere registrato come user nel caso del successo con i documenti il ruolo viene cambiato da 'user' a 'driver'

## Eccezioni:

- L'email,numero telefono scelti sono già presenti nel database.
- User non clicca sul link di conferma dell'email entro il tempo richiesto.
- L'email o la password ,data di nascita , numero telefono non rispettano i requisiti di formato.

### Scenario 1.1: Registrazione User (Con Successo)

**Precondizione:** L'user possiede un indirizzo email, numero telefono.

**Postcondizione:** L'user è registrato nell'applicazione.

| Passo | Descrizione                                                                                         |
| ----- | --------------------------------------------------------------------------------------------------- |
| 1     | User avvia l'applicazione (raggiunge il sito web tramite browser).                                  |
| 2     | User seleziona l'opzione "Register as User".                                                        |
| 3     | User inserisce email,password,nome,cognome,data di nascita nei campi rispettivi e invia i dati.     |
| 4     | Sistema controlla se l'email e la password,email,password,data di nascita, rispettano i requisiti.  |
| 5     | Sistema controlla se esiste già un account con quell'email,numero telefono.                         |
| 6     | Non viene trovato nessun account esistente associato all'email; viene inviata un'email di conferma. |
| 7     | User apre l'email ricevuta e clicca sul link di conferma.                                           |
| 8     | Sistema registra l'account dell'user.                                                               |

### Scenario 1.2: Registrazione Driver (Dopo Registrazione come User)

**Precondizione:** L'utente è già registrato come user e desidera registrarsi come driver.

**Postcondizione:** La richiesta di registrazione come driver viene inviata all'admin per la verifica; il driver riceve lo stato "in attesa di verifica".

| Passo | Descrizione                                                                                           |
| ----- | ----------------------------------------------------------------------------------------------------- |
| 1     | User avvia l'applicazione.                                                                            |
| 2     | User effettua l'accesso.                                                                              |
| 3     | User clicca "Diventa Driver".                                                                         |
| 3     | User carica i documenti richiesti, come la patente di guida.                                          |
| 4     | Sistema verifica che l'email sia già registrata come user e aggiorna il ruolo a driver.               |
| 5     | Sistema invia i documenti caricati per la verifica dell'admin.                                        |
| 6     | Lo stato della registrazione come driver viene impostato su "in attesa di verifica".                  |
| 7     | Admin verifica i documenti. La verifica è positiva, il sistema conferma la registrazione come driver. |

### Scenario 1.3: Registrazione User (Email Non Confermata)

**Precondizione:** L'user possiede un indirizzo email.

**Postcondizione:** La registrazione dell'account è incompleta.

| Passo | Descrizione                                                                                         |
| ----- | --------------------------------------------------------------------------------------------------- |
| 1     | User avvia l'applicazione.                                                                          |
| 2     | User seleziona l'opzione "Register as User".                                                        |
| 3     | User inserisce email, nome utente e password,n.telefono,data di nascita.                            |
| 4     | Sistema controlla se l'email e la password,n.telefono,data di nascita rispettano i requisiti.       |
| 5     | Sistema controlla se esiste già un account con quell'email.                                         |
| 6     | Non viene trovato nessun account esistente associato all'email; viene inviata un'email di conferma. |
| 7     | User non apre l'email e non clicca sul link entro il tempo richiesto.                               |
| 8     | Sistema non registra l'account; l'user riparte dal passo #2.                                        |

### Scenario 1.4: Registrazione Driver (Non approvato)

**Precondizione:** L'utente è già registrato come user e desidera registrarsi come driver.

**Postcondizione:** La richiesta di registrazione come driver viene inviata all'admin per la verifica; il driver riceve lo stato "in attesa di verifica".

| Passo | Descrizione                                                                                                   |
| ----- | ------------------------------------------------------------------------------------------------------------- |
| 1     | User avvia l'applicazione.                                                                                    |
| 2     | User effettua l'accesso.                                                                                      |
| 3     | User clicka "Diventa Driver".                                                                                 |
| 3     | User carica i documenti richiesti, come la patente di guida.                                                  |
| 4     | Sistema verifica che l'email sia già registrata come user e aggiorna il ruolo a driver.                       |
| 5     | Sistema invia i documenti caricati per la verifica dell'admin.                                                |
| 6     | Lo stato della registrazione come driver viene impostato su "in attesa di verifica".                          |
| 7     | Admin verifica i documenti. La verifica falisce viene mostrato un messaggio di errore con I problem specifci. |

### Scenario 1.5: Registrazione User/Driver (Dati errati)

**Precondizione:** L'user possiede un indirizzo email,numero di telefono.

**Postcondizione:** La registrazione dell'account è incompleta.

| Passo | Descrizione                                                                                   |
| ----- | --------------------------------------------------------------------------------------------- |
| 1     | User avvia l'applicazione.                                                                    |
| 2     | User seleziona l'opzione "Register ".                                                         |
| 3     | User inserisce email, nome utente e password,n.telefono,data di nascita.                      |
| 4     | Sistema controlla se l'email e la password,n.telefono,data di nascita rispettano i requisiti. |
| 5     | Sistema mostra un messaggio di errore che indica l'errore nel campo specifico.                |
| 6     | User riparte dal passo 3.                                                                     |
