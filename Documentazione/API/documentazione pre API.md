
## Risorse

- Accounts
- Authentication
- Users (customers e drivers)
- Users/Reservations
- Users/Rides/Reviews
- Users/Rides/Payment(s)
- Users/Rides/Positions
- Users/Rides/Reports
- Users/Cars
- Reservations
- Rides
- Rides/Reviews
- Rides/Reports
- Rides/Positions
- Admins
- Documents

## Metodi

### Accounts

- accounts/{id}/modifyAccount
- accounts/{id}/deleteAccount
- accounts/{id}/suspensionAccount

### Authentication

- authentication/register
- authentication/login
- authentication/logout
- authenticaion/resetPsw

### Users

- users/{id}/uploadDocuments
- users/{id}/modifyProfile
- users/{id}/reservations/reserveRide
- users/searchDrivers
- users/{id}/rides/{id}/reports/add
- users/{id}/rides/{id}/reports/{id}/addRefund
- users/{id}/rides/{id}/payments/add
- users/{id}/rides/payments/view
- users/{id}/rides/{id}/payments/receive
- users/{id}/Cars/add
- users/{id}/Cars/view
- users/{id}/Cars/{id}/delete
- users/{id}/reservations/acceptRide

### Reservations

- reservations/add
- reservations/{id}/cancel
- reservations/{id}/addDeposit

### Rides

- rides/{id}/reports/add
- rides/{id}/reports/view
- rides/{id}/reports/{id}/delete
- rides/{id}/reports/{id}/modify
- rides/{id}/payment
- rides/{id}/reports/{id}/addRefund

### Admin

- admins/deleteUser
- admins/acceptDocuments
- admins/acceptAccountChanges
- admins/suspendAccount
- admins/acceptRefund (da fare)

### Documents

- users/{userId}/documents
- users/{userId}/documents/changeDocumentDesc
- users/{userId}/documents/changeDocumentState
- users/{userId}/documents/changeValidity
- users/{userId}/documents/uploadDocument
