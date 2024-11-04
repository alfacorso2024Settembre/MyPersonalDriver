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

| Passo | Descrizione                                                  |
| ----- | ------------------------------------------------------------ |
| 1     | L'attore seleziona "Logout".                                 |
| 2     | Sistema disconnetti l'attore e mostra la schermata di login. |

### Scenario 3.2: Logout (Attore Non Loggato)

**Precondizione:** L'attore non è loggato.

**Postcondizione:** Viene mostrato un messaggio di errore.

| Passo | Descrizione                                    |
| ----- | ---------------------------------------------- |
| 1     | L'attore seleziona "Logout".                   |
| 2     | Sistema mostra un messaggio "Non sei loggato". |
