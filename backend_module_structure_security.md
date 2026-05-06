# Visa Booking Agency - Backend Architecture (NestJS)

## Directory Structure
```text
src/
├── common/
│   ├── decorators/
│   ├── filters/       # GlobalExceptionFilter
│   ├── guards/        # JwtAuthGuard, RolesGuard
│   ├── interceptors/  # LoggingInterceptor (Request-ID)
│   └── pipes/
├── modules/
│   ├── auth/          # JWT, Passport Strategy
│   ├── users/         # Admin/Agent Management
│   ├── clients/       # Passport-unique CRUD
│   ├── accounts/      # Portal Credentials (AES-256)
│   ├── bookings/      # Status Workflow
│   ├── sessions/      # Launcher & Outcome Tracking
│   ├── notifications/ # Event-driven BullMQ
│   ├── payments/      # Transaction Ledger
│   └── audit-logs/    # Immutable Metadata Logging
├── prisma/
│   └── prisma.service.ts
└── main.ts
```

## Security Implementation
- **Credential Encryption**: `accounts.service.ts` uses `crypto` module (AES-256-GCM) to encrypt portal passwords before storage.
- **RBAC**: `@Roles(UserRole.ADMIN)` applied to destructive or sensitive endpoints.
- **Request Tracing**: Middleware assigns `x-request-id` to every incoming request for structured logging.

## Core Module: Sessions
The Session module implements the non-automated tracking required:
- `POST /sessions/launch`: Creates a session record, returns the portal URL.
- `PATCH /sessions/:id/outcome`: Updates the record with manual findings and closes the session.
- `EventEmitter2`: Triggers an `AuditLog` creation and `Notification` on session completion.
