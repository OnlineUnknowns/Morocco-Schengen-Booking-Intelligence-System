# Visa Management System - API Documentation (OpenAPI/Swagger)

## Base URL: `http://localhost:3000/api/v1`

## 1. Authentication
- **POST /auth/login**: Standard login with email/password. Returns `accessToken` and `refreshToken`.
- **POST /auth/refresh**: Rotates refresh tokens.
- **GET /auth/me**: Returns current user profile based on JWT.

## 2. Clients
- **GET /clients**: List clients with pagination and search.
- **POST /clients**: Create new client profile.
- **GET /clients/:id**: Detailed profile including history.
- **PATCH /clients/:id**: Update client info.

## 3. Portal Accounts (Credential Vault)
- **GET /accounts**: List available portal credentials.
- **POST /accounts**: Securely store encrypted portal credentials.
- **GET /accounts/:id/stats**: Usage statistics for specific credentials.

## 4. Booking Requests
- **GET /bookings**: Filterable list of booking requests.
- **POST /bookings**: Initiate a new request for a client.
- **PATCH /bookings/:id/status**: Update status (Scheduled, Cancelled, etc.)

## 5. Sessions (Launcher)
- **POST /sessions/launch**: Create a new session entry.
- **GET /sessions/:id/url**: Retrieve portal URL for launching.
- **PATCH /sessions/:id/outcome**: Update with manual session findings and close record.

## 6. Audit & Payments
- **GET /audit-logs**: Admin-only immutable log of system actions.
- **GET /payments/ledger**: Transaction history and financial totals.
