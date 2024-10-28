# Use Case: Registrazione

## Attori:
- User
- Driver

**Nota:** La registrazione dell'admin è gestita separatamente dal team di developer.

## Precondizioni:
- User possiede un indirizzo email e un numero di telefono.
- Driver possiede un indirizzo email,numero di telefono e documenti validi.
- L'email e la password,numero di telefono,data di nascita devono rispettare i requisiti di formato.


## Postcondizioni:
- User o driver ha un account nell'applicazione.



## Scenario Nominale:
Un nuovo user o driver sceglie "Register as User" o "Register as Driver", inserisce email,password,nome,cognome,data di nascita e si registra con successo dopo aver confermato l'email. Se si registra come driver, deve anche caricare la patente di guida  per la verifica.


### Requisiti per la Password:
- Minimo 8 caratteri
- Almeno 1 lettera maiuscola
- Almeno 1 numero
- Almeno 1 carattere speciale

### Requisiti per l'Email:
- Deve essere in un formato email valido (es. example@email.com).

### Requisiti per l numero telefono.
- Deve essere in un formato valido in base del prefix (es Italia. +39xxxxxxxxxx o 0039xxxxxxxxxx)

## Varianti:
- **Registrazione User:** L'user si registra fornendo email,password,nome,cognome,data di nascita , numero telefono.
- **Registrazione Driver:** Il driver deve fornire anche la patente e la carta d'identità.

## Eccezioni:
- L'email,numero telefono scelti sono già presenti nel database.
- User non clicca sul link di conferma dell'email entro il tempo richiesto.
- L'email o la password ,data di nascita , numero telefono  non rispettano i requisiti di formato.

### Scenario 1.1: Registrazione User (Con Successo)
**Precondizione:** L'user possiede un indirizzo email, numero telefono.

**Postcondizione:** L'user è registrato nell'applicazione.

| Passo | Descrizione |
|-------|-------------|
| 1 | User avvia l'applicazione (raggiunge il sito web tramite browser). |
| 2 | User seleziona l'opzione "Register as User". |
| 3 | User inserisce email,password,nome,cognome,data di nascita nei campi rispettivi e invia i dati. |
| 4 | Sistema controlla se l'email e la password,email,password,data di nascita, rispettano i requisiti. |
| 5 | Sistema controlla se esiste già un account con quell'email,numero telefono. |
| 6 | Non viene trovato nessun account esistente associato all'email; viene inviata un'email di conferma. |
| 7 | User apre l'email ricevuta e clicca sul link di conferma. |
| 8 | Sistema registra l'account dell'user. |

### Scenario 1.2: Registrazione User (Email Già Registrata)
**Precondizione:** L'user possiede un indirizzo email già registrato nell'applicazione.

**Postcondizione:** Viene mostrato un messaggio di errore.

| Passo | Descrizione |
|-------|-------------|
| 1 | User avvia l'applicazione. |
| 2 | User seleziona l'opzione "Register as User". |
| 3 | User inserisce email, nome utente e password,n.telefono,data di nascita. |
| 4 | Sistema controlla se l'email,n.telefono e la password rispettano i requisiti. |
| 5 | Sistema controlla se esiste già un account con quell'email. |
| 6 | Viene trovato un account esistente; viene mostrato un messaggio di errore. |

### Scenario 1.3: Registrazione User (Email Non Confermata)
**Precondizione:** L'user possiede un indirizzo email.

**Postcondizione:** La registrazione dell'account è incompleta.

| Passo | Descrizione |
|-------|-------------|
| 1 | User avvia l'applicazione. |
| 2 | User seleziona l'opzione "Register as User". |
| 3 | User inserisce email, nome utente e password,n.telefono,data di nascita. |
| 4 | Sistema controlla se l'email e la password,n.telefono,data di nascita rispettano i requisiti. |
| 5 | Sistema controlla se esiste già un account con quell'email. |
| 6 | Non viene trovato nessun account esistente associato all'email; viene inviata un'email di conferma. |
| 7 | User non apre l'email e non clicca sul link entro il tempo richiesto. |
| 8 | Sistema non registra l'account; l'user riparte dal passo #2. |

### Scenario 1.4: Registrazione Driver (Con Successo con Verifica dell'Admin)
**Precondizione:** Driver possiede email, patente e carta d'identità. L'admin è disponibile per la verifica.

**Postcondizione:** La richiesta di registrazione viene inviata all'admin per la verifica, e il driver riceve uno stato "in attesa di verifica".

| Passo | Descrizione |
|-------|-------------|
| 1 | Driver avvia l'applicazione. |
| 2 | Driver seleziona "Register as Driver". |
| 3 | Driver inserisce email, nome, password, patente . |
| 4 | Sistema controlla se email e password rispettano i requisiti. |
| 5 | Sistema controlla se esiste già un account con quell'email. |
| 6 | Non viene trovato un account associato all'email; viene inviata un'email di conferma. |
| 7 | Driver clicca sul link di conferma. |
| 8 | Sistema invia la richiesta di registrazione, insieme ai documenti, all'admin. |
| 9 | Driver viene informato che la registrazione è in attesa di verifica. |
| 10 | Admin verifica i documenti. Se la verifica è positiva, il sistema registra il driver e lo notifica. |
| 11 | Se la verifica fallisce, viene mostrato un messaggio di errore. |

### Scenario 1.5: Registrazione Driver (Documenti Non Verificati)
**Precondizione:** Driver possiede email, patente e carta d'identità.

**Postcondizione:** La registrazione viene rifiutata per mancata verifica dei documenti.

| Passo | Descrizione |
|-------|-------------|
| 1 | Driver avvia l'applicazione. |
| 2 | Driver seleziona "Register as User". |
| 3 | Driver inserisce email, nome utente, password, patente e carta d'identità. |
| 4 | Sistema controlla se l'email e la password rispettano i requisiti. |
| 5 | Sistema controlla se esiste già un account con quell'email. |
| 6 | Non viene trovato un account associato all'email; viene inviata un'email di conferma. |
| 7 | Driver clicca sul link di conferma. |
| 8 | Status : Verification pending. |
| 9 | Admin verifica i documenti. Se la verifica fallisce, viene mostrato un messaggio di errore con I problem specifci. |

### Scenario 1.6: Registrazione User/Driver (Dati errati)
**Precondizione:** L'user possiede un indirizzo email,numero di telefono.

**Postcondizione:** La registrazione dell'account è incompleta.

| Passo | Descrizione |
|-------|-------------|
| 1 | User/Driver avvia l'applicazione. |
| 2 | User/Driver seleziona l'opzione "Register as User o Register as Driver". |
| 3 | User inserisce email, nome utente e password,n.telefono,data di nascita. |
| 4 | Sistema controlla se l'email e la password,n.telefono,data di nascita rispettano i requisiti. |
| 5 | Sistema mostra un messaggio di errore che indica l'errore nel campo specifico. |
| 6 | User/Driver riparte dal passo 3. |




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

### Scenario 2.1: Login (Con Successo)
**Precondizione:** L'attore ha un account.

**Postcondizione:** L'attore è loggato.

| Passo | Descrizione |
|-------|-------------|
| 1 | Attore richiede il login. |
| 2 | Sistema chiede email e password. |
| 3 | Sistema verifica che email e password siano corretti. |
| 4 | L'attore può accedere alle informazioni. |

### Scenario 2.2: Account Non Registrato
**Precondizione:** L'attore non ha un account.

**Postcondizione:** Viene mostrato un messaggio di errore.

| Passo | Descrizione |
|-------|-------------|
| 1 | L'attore richiede il login. |
| 2 | Sistema chiede email e password. |
| 3 | Sistema verifica le credenziali, ma l'email non è associata a nessun account. |
| 4 | Viene mostrato un messaggio "L'email non è corretta o non è associata a nessun account". |

### Scenario 2.3: Password Errata
**Precondizione:** L'attore ha un account.

**Postcondizione:** Viene mostrato un messaggio di errore.

| Passo | Descrizione |
|-------|-------------|
| 1 | L'attore richiede il login. |
| 2 | Sistema chiede email e password. |
| 3 | Sistema verifica le credenziali, ma la password non è corretta. |
| 4 | Viene mostrato un messaggio "Password errata". |

### Scenario 2.4: Password Dimenticata
**Precondizione:** L'attore ha un account.

**Postcondizione:** L'attore riceve un'email per reimpostare la password.

| Passo | Descrizione |
|-------|-------------|
| 1 | L'attore richiede il login. |
| 2 | Sistema chiede email e password. |
| 3 | L'attore seleziona l'opzione "Password dimenticata?". |
| 4 | Sistema richiede l'email associata all'account. |
| 5 | L'attore inserisce l'email e invia la richiesta. |
| 6 | Sistema verifica se l'email è associata a un account. |
| 7 | Se l'email è valida, il sistema invia un'email con un link per reimpostare la password. |
| 8 | L'attore apre l'email ricevuta e clicca sul link per reimpostare la password. |
| 9 | Sistema chiede di inserire una nuova password. |
| 10 | L'attore inserisce la nuova password e conferma. |
| 11 | Sistema aggiorna la password e notifica l'attore che la reimpostazione è stata completata con successo. |

### Scenario 2.5: Password Dimenticata (Email Errata)
**Precondizione:** L'attore non ha accesso all'email associata al proprio account.

**Postcondizione:** Viene mostrato un messaggio di errore.

| Passo | Descrizione |
|-------|-------------|
| 1 | L'attore richiede il login. |
| 2 | Sistema chiede email e password. |
| 3 | L'attore seleziona l'opzione "Password dimenticata?". |
| 4 | Sistema richiede l'email associata all'account. |
| 5 | L'attore inserisce l'email e invia la richiesta. |
| 6 | Sistema verifica se l'email è associata a un account. |
| 7 | Se l'email non è valida, il sistema mostra un messaggio "L'email non è corretta o non è associata a nessun account". |



# Use Case: Logout

## Attori:
- User
- Driver
- Admin

## Precondizioni:
- L'attore è loggato.

## Postcondizioni:
- L'attore è disconnesso dall'applicazione.

## Scenario Nominale:
L'attore seleziona l'opzione "Logout".

### Eccezioni:
- L'attore non è loggato.

### Scenario 3.1: Logout (Con Successo)
**Precondizione:** L'attore è loggato.

**Postcondizione:** L'attore è disconnesso.

| Passo | Descrizione |
|-------|-------------|
| 1 | L'attore seleziona "Logout". |
| 2 | Sistema disconnetti l'attore e mostra la schermata di login. |

### Scenario 3.2: Logout (Attore Non Loggato)
**Precondizione:** L'attore non è loggato.

**Postcondizione:** Viene mostrato un messaggio di errore.

| Passo | Descrizione |
|-------|-------------|
| 1 | L'attore seleziona "Logout". |
| 2 | Sistema mostra un messaggio "Non sei loggato". |

