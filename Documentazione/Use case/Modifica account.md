# Modifica account

## Attore primario

User registrato

## Parti interessate

Admin

## Descrizione:  
L’utente accede alla piattaforma My Personal Driver e modifica il proprio account aggiornando 
le informazioni personali. 

## Descrizione:

L’utente accede alla piattaforma My Personal Driver e modifica il proprio account aggiornando
le informazioni personali e i dettagli relativi al veicolo. A seguito di modifiche, è richiesto di caricare
nuovamente i documenti necessari, i quali saranno verificati manualmente dall'admin.


## Precondizioni:

L'utente deve essere registrato e autenticato.

## Scenario Base - Modifica dei dati personali

| Passo | Attore                  | Azione                                                          |
| :---: | :---------------------- | :-------------------------------------------------------------- |
|   1   | Utente                  | accede al proprio account sulla piattaforma My Personal Driver. |
|   2   | Utente                  | seleziona l'opzione "Modifica Account"                          |
|   3   | Sistema                 | mostra la pagina del profilo dell'utente                        |
|   4   | Utente                  | seleziona "modifica dati personali"                             |
|   5   | Sistema                 | mostra pagina con dati personali da modificare                  |
|   5   | Utente                  | modifica i dati                                                 |
|   7   | Sistema                 | verifica che i dati inseriti siano nel formato corretto         |
|   8   | Sistema                 | carica i nuovi dati inseriti                                    |
|   9   | Sistema                 | informa sul buon fine della modifica                            |
|       | _Termina il caso d'uso_ |                                                                 |

### Eccezione 7.1

| Passo | Attore               | Azione                                                |
| :---: | :------------------- | :---------------------------------------------------- |
|   7   | Sistema              | ERRORE: i dati inseriti non sono nel formato corretto |
|       | _Ritorna al passo 3_ |                                                       |


=======
## Estensione 4.1 - Modifica carta d'identità

| Passo | Attore                  | Azione                                                                                       |
| :---: | :---------------------- | :------------------------------------------------------------------------------------------- |
|   4   | Utente                  | seleziona "modifica carta d'identità"                                                        |
|   5   | Sistema                 | mostra la pagina con il form per il caricamento dei nuovi dati                               |
|   6   | Utente                  | modifica la data di scadenza della carta d'identità                                          |
|   7   | Sistema                 | richiede di inserire il nuovo numero della carta d'identità                                  |
|   8   | Utente                  | inserisce il numero della nuova carta d'identità                                             |
|   9   | Sistema                 | verifica che il formato sia corretto                                                         |
|  10   | Sistema                 | richiede di inserire la data di scadenza                                                     |
|  11   | Utente                  | inserisce la data di scadenza                                                                |
|  12   | Sistema                 | verifica che il formato sia corretto                                                         |
|  13   | Sistema                 | richiede di caricare la foto del documento                                                   |
|  14   | Utente                  | carica la foto                                                                               |
|  15   | Sistema                 | verifica che il formato dell'immagine sia corretto                                           |
|  16   | Sistema                 | carica i nuovi dati inseriti                                                                 |
|  17   | Sistema                 | modifica lo stato del documento in "sospeso"                                                 |
|  18   | Sistema                 | informa l'utente "caricamento avvenuto, documenti in attesa di conferma da parte dell'admin" |
|       | _Termina il caso d'uso_ |                                                                                              |

### Eccezione 9.1

| Passo | Attore               | Azione                                |
| :---: | :------------------- | :------------------------------------ |
|   9   | Sistema              | ERRORE: formato dei dati non corretto |
|       | _Ritorna al passo 7_ |                                       |

### Eccezione 12.1

| Passo | Attore                | Azione                                  |
| :---: | :-------------------- | :-------------------------------------- |
|  12   | Sistema               | ERRORE: formato della data non corretto |
|       | _Ritorna al passo 10_ |                                         |

### Eccezione 15.1

| Passo | Attore                | Azione                                       |
| :---: | :-------------------- | :------------------------------------------- |
|  15   | Sistema               | ERRORE: formato dell'immagine non supportato |
|       | _Ritorna al passo 13_ |                                              |

## Estensione 4.2 - Modifica dati del veicolo

| Passo | Attore                  | Azione                                                         |
| :---: | :---------------------- | :------------------------------------------------------------- |
|   4   | Utente                  | seleziona "modifica dati del veicolo"                          |
|   5   | Sistema                 | mostra la pagina con il form per il caricamento dei nuovi dati |
|   6   | Utente                  | inserisce il nome del nuovo proprietario della macchina        |
|   7   | Sistema                 | verifica che il formato sia corretto                           |
|   8   | Sistema                 | richiede l'inserimento della foto dell'assicurazione           |
|   9   | Utente                  | carica la foto                                                 |
|  10   | Sistema                 | verifica la validità del formato                               |
|  11   | Sistema                 | carica la modifica                                             |
|  12   | Sistema                 | modifica lo stato del documento in "sospeso"                   |
|  13   | Sistema                 | comunica la conferma della modifica                            |
|       | _Termina il caso d'uso_ |                                                                |

### Eccezione 7.1

| Passo | Attore               | Azione                                         |
| :---: | :------------------- | :--------------------------------------------- |
|   7   | Sistema              | ERRORE: formato dei dati inseriti non corretto |
|       | _Ritorna al passo 6_ |                                                |

### Eccezione 10.1

| Passo | Attore               | Azione                                    |
| :---: | :------------------- | :---------------------------------------- |
|  10   | Sistema              | ERRORE: formato della foto non supportato |
|       | _Ritorna al passo 9_ |                                           |

## Estensione 4.3 - Modifica patente

| Passo | Attore                  | Azione                                                                                       |
| :---: | :---------------------- | :------------------------------------------------------------------------------------------- |
|   4   | Utente                  | seleziona "modifica patente"                                                                 |
|   5   | Sistema                 | mostra la pagina con il form per il caricamento dei nuovi dati                               |
|   6   | Utente                  | modifica la data di scadenza della patente                                                   |
|   7   | Sistema                 | verifica che il formato sia corretto                                                         |
|   8   | Sistema                 | richiede di caricare la foto del documento                                                   |
|  11   | Utente                  | carica la foto                                                                               |
|  12   | Sistema                 | verifica che il formato dell'immagine sia corretto                                           |
|  13   | Sistema                 | carica i nuovi dati inseriti                                                                 |
|  14   | Sistema                 | modifica lo stato del documento in "sospeso"                                                 |
|  15   | Sistema                 | informa l'utente "caricamento avvenuto, documenti in attesa di conferma da parte dell'admin" |
|       | _Termina il caso d'uso_ |                                                                                              |

### Eccezione 7.1

| Passo | Attore               | Azione                                  |
| :---: | :------------------- | :-------------------------------------- |
|   7   | Sistema              | ERRORE: formato della data non corretto |
|       | _Ritorna al passo 5_ |                                         |

### Eccezione 12.1

| Passo | Attore               | Azione                                    |
| :---: | :------------------- | :---------------------------------------- |
|  12   | Sistema              | ERRORE: formato della foto non supportato |
|       | _Ritorna al passo 8_ |                                           |


## Estensione 4.4 - Modifica foto profilo

| Passo | Attore                  | Azione                                                     |
| :---: | :---------------------- | :--------------------------------------------------------- |
|   4   | Utente                  | seleziona "Modifica foto profilo"                          |
|   5   | Sistema                 | mostra la pagina con il form per il caricamento della foto |
|  11   | Utente                  | carica la foto                                             |
|  12   | Sistema                 | verifica che il formato dell'immagine sia corretto         |
|  13   | Sistema                 | carica i nuovi dati inseriti                               |
|       | _Termina il caso d'uso_ |                                                            |

### Eccezione 12.1

| Passo | Attore               | Azione                                    |
| :---: | :------------------- | :---------------------------------------- |
|  12   | Sistema              | ERRORE: formato della foto non supportato |
|       | _Ritorna al passo 5_ |                                           |
