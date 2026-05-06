# Visa Booking Agency System (Morocco) - Architecture & System Design

## 1. Architecture Overview
A production-grade, distributed system built on a micro-modular monolith architecture using NestJS for the backend and Next.js for the frontend.

### Component Diagram (Text-based)
[Client Browser] <-> [Next.js Frontend (Vercel/Static)] <-> [Nginx Reverse Proxy]
                                                               |
                                                  [NestJS API Service (Node.js)]
                                                   /      |        |        \
                             [MySQL (Prisma)]  [Redis (BullMQ)]  [Audit Logs (JSON)] [External Visa Site]

## 2. Data Flow
1. **Request Flow**: User interacts with Next.js dashboard -> Secure API call via JWT -> NestJS Controller -> Service -> Prisma Repository -> MySQL.
2. **Notification Flow**: System Event (e.g., Booking Status Change) -> EventEmitter2 -> Notification Service -> DB Store + UI Socket update.
3. **Session Lifecycle**: Agent initiates session -> Session Service creates record -> Launcher opens external URL (via window.open/redirect) -> Agent logs outcome -> Session closed.

## 3. Module Breakdown
- **Auth**: JWT strategy, RBAC, Refresh token rotation.
- **Users**: Admin/Agent management.
- **Clients**: Core entity (Passport-unique), CRM-style management.
- **Booking Requests**: Status machine (Pending -> Scheduled -> Completed -> Cancelled).
- **Accounts**: External visa portal credentials management.
- **Sessions**: Non-automated tracking of portal usage.
- **Payments**: Transaction tracking and agency billing.
- **Audit Logs**: Immutable record of all mutations with JSON metadata.

## 4. Scaling Strategy
- **Horizontal Scaling**: Stateless NestJS instances behind a Load Balancer.
- **Database**: Read-replicas for high-traffic agency reporting; indexing on `passportNumber`, `clientId`, and `status`.
- **Caching**: Redis for session metadata and frequent configuration lookups.
- **Queues**: BullMQ handles heavy async tasks (e.g., bulk notifications or data exports) to keep the main thread responsive.

## 5. Security & Compliance
- AES-256 encryption for stored portal credentials in the `Accounts` module.
- Strict RBAC: Agents see only their assignments; Admins see agency-wide data.
- Structured logging with Request-ID tracing for rapid debugging.
