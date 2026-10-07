# Nima Khaki — Engineering Index

## Engineering identity

I am a software / systems engineer in Stockholm, Sweden. My work centers on state, ownership and recovery: deciding which component may change something, what survives interruption, and what evidence makes a result trustworthy. That thread connects systems programming, backend and distributed workflows, data engineering, native applications and developer tooling.

The public tools featured here make selected parts of that work directly inspectable. The broader engineering experience described here spans mobility, commerce, education data and B2B product workflows. I focus on the mechanisms behind those systems: explicit contracts, durable intent, bounded resources and understandable failure states. The most useful technical conversation starts with an invariant and follows it through a transition, a failure and recovery.

## Systems and reliability

[PersistScope](https://github.com/Nima0101/persistscope) is a C++20 library and CLI for model checking small persistence protocols. It explores modeled crash outcomes and produces replayable counterexamples. File-data durability and directory durability are separate: a file sync and a directory sync constrain different events. An exhausted search budget yields an incomplete result. The [architecture](https://github.com/Nima0101/persistscope/blob/main/docs/architecture.md) explains the model assumptions that give a result its meaning.

Alongside this public tool, nine standalone C++20 portfolio samples explore ownership, concurrency and recovery. They cover atomic assignment, a POSIX journal, deterministic policy transitions, bounded normalization, fenced leases, identity resolution, catalog storage, validation and order replay. These samples use synthetic inputs and have their own verification scope, separate from product deployment. Recorded CMake/CTest and AddressSanitizer/UndefinedBehaviorSanitizer runs exercise competing callers, interrupted processes, malformed input and lifetime boundaries.

The recurring design choice is to make ownership explicit. RAII and owned values clarify lifetimes; single-process mutex-protected transitions define where a concurrent decision takes effect; generations distinguish a current lease from an obsolete one. Deterministic state machines and bounded histories make replay understandable. Fault tolerance starts with naming the failure and deciding what the surviving state can actually establish.

## AI and agent infrastructure

My applied-AI work includes backend controls around entitlement, resource budgets, allowed actions and recoverable accounting. One important failure case occurs when a provider has completed a model request but the accounting store is temporarily unavailable. Once a completion receipt is durably recorded, accounting can replay from it without repeating that successful request. Focused tests use controlled provider/database fixtures and filesystem journal operations to exercise this boundary.

Developer tooling has a related authority problem: an AI agent's proposed action needs a defined contract. I have worked with Model Context Protocol (MCP) interfaces that validate schemas, check repository identity, restrict commands and support cancellable leased tasks. Shell-free execution, time/output limits, process-group cancellation and output redaction keep tool execution bounded.

For a public model-relative example, [Contingram](https://github.com/Nima0101/contingram) explores recovery policies for finite tool contracts and checks the resulting artifacts independently of its search. It runs offline without invoking tools.

Verification also needs identity. A result tied to one revision or workspace must not silently authorize changes to another. Evidence checks and explicit capability boundaries make that distinction reviewable. My focus here is the reliability of AI integrations and engineering automation: the same retry, ownership and recovery questions that matter in other backend systems.

## Backend and distributed systems

TypeScript and Node.js work connects REST APIs, webhooks, background workers and external providers. I design stateful workflows around stable operation identity, clear transition ownership and explicit handling of uncertain external results. Retrying an API call, replaying a stored event and repeating a device side effect are different operations; their contracts need to say which one is safe.

Payment reconciliation illustrates the problem. A delayed provider event should not overwrite a newer accepted state. Serialization, identity checks and preserved event ordering help protect that boundary. Checkout also needs to remain tied to the request the user actually reviewed while asynchronous work is in flight. The engineering question is what must be revalidated after an await or a retry.

Idempotency binds a retry to the same intended operation. Workers add leases, heartbeats, bounded retries and recovery after owner loss. Fencing keeps an expired worker from finalizing work that now belongs to another owner. Durable intent and reconciliation make independently failing components manageable. API contracts also include resource limits, deadline budgets and clear partial-failure behavior, so a provider failure produces a useful state instead of an ambiguous success.

## Data engineering

My data work combines Python acquisition, PostgreSQL state and TypeScript consumers. The pipeline separates raw source evidence, normalization, canonical identity, quarantine, review and publication. Provenance and lineage preserve where a value came from and which accepted version a reader is seeing. Missing or suppressed values retain their meaning instead of silently becoming ordinary numbers.

Deterministic identity decisions distinguish a match from ambiguity or conflict. Bounded ingestion protects the processing path from oversized records, malformed responses and exhausted retry budgets. Coverage accounting makes incomplete acquisition visible before it becomes an apparently complete publication. These are data-quality decisions as much as transport concerns.

Reviewed publication creates an immutable version while preserving the last known good dataset. Transactional outbox intent connects the publication commit to subsequent notification work; readers use a consistent publication identity across rendered content and metadata. Durable jobs and stable read models allow ingestion and presentation to evolve at different speeds.

PostgreSQL and SQL work includes constraints, row locking, migrations, transactional RPC, row-level security and managed-database permissions. My verification practice distinguishes executed database checks from source-level SQL review. That distinction matters when discussing concurrency or upgrade safety: a well-formed transition and a tested deployment are separate pieces of evidence.

## Native, mobile and device integration

Swift and SwiftUI work covers native iOS application lifecycle, API clients, authentication, secure session storage and maps/location integration. Actors coalesce token refresh; generation checks protect UI state when asynchronous work completes after sign-out or account replacement. Account-scoped Keychain storage and explicit target ownership keep session state aligned with the active application and user.

Location handling adds another clock and lifecycle boundary. A sample taken before sign-out must not become a fresh location update for a replacement session. Foreground/background policy, stale-fix rejection and cancellation of superseded work preserve that intent. Recorded host/XCTest coverage and a historical native SwiftUI CI build support these implementation cases at their respective revisions.

Device integration raises a different uncertainty: a missing acknowledgement does not tell us whether a side effect occurred. Local print execution uses durable attempt identity and journal recovery, with reconciliation for unknown submission outcomes. The separate C++ journal sample exercises filesystem interruption and recovery with synthetic jobs. Reliable local execution depends on distinguishing recorded intent, submitted work and confirmed outcome.

## Platform, CI/CD and observability

I work on the conditions that make a build or release result dependable. GitHub Actions and self-hosted CI need explicit workspace identity, isolated execution and resource admission. On shared Mac runners, measured memory/disk reservations and owner-bound heartbeat leases constrain concurrency. Queue age matters as well: older eligible work needs a safe route to execution instead of indefinite starvation.

Delivery checks tie verification to the revision being released. Public OSS work adds multi-platform packaging, installed-library and CLI checks, sanitizers, fuzzing smoke tests and security analysis. A release archive is a useful artifact because someone else can download it, run the example and inspect the contract that explains the result.

Observability work includes Sentry incident intake connected to release identity, deduplication and recurrence tracking. Bounded diagnostic context and telemetry sanitization preserve useful failure information while reducing unnecessary sensitive data. Root-cause engineering follows the incident through a regression check and the intended deployed behavior; a diagnostic event alone does not establish that a fix has reached the user.

## Product, full-stack and commerce

Next.js, React and TypeScript work connects server-side workflows to usable product interfaces. Examples include data-driven pages, typed catalogs, multi-step requests, customer/staff views and quote-to-order transitions. Shared domain types help the UI and backend agree on meaning, while server-authoritative validation keeps client-supplied data from becoming commercial authority.

Commerce work brings payment reconciliation, versioned acceptance, provider integration and order state into the same flow. PostgreSQL transactions and uniqueness constraints give accepted decisions a durable identity. Request persistence, message delivery and provider acceptance remain separately observable outcomes. This is particularly important when a user retries after an interrupted response.

Accessibility and technical SEO belong to the implementation: semantic labels, associated errors, keyboard focus, responsive layout and skip links make interfaces navigable. Canonical URLs, metadata, structured data and sitemaps derive from the content being presented. These product cases include source-reviewed implementation and recorded checks; their value is in the specific boundaries and decisions they expose.

## Security, authentication and data boundaries

Authentication work includes session replacement, token identity validation and clear product/account boundaries. Authorization must be checked at the resource transition, with customer and staff access separated by explicit ownership and role rules. PostgreSQL row-level security and grants reinforce those application boundaries.

File workflows need their own authority model: short-lived access, session binding, object-size limits, content validation and cleanup. Network acquisition likewise needs bounded redirects, response sizes, decompression and deadlines. These controls constrain input and execution before they reach durable state.

I use negative-path verification for wrong-context credentials, stale work, malformed input and unauthorized transitions. Public repository CI includes security scanning, but the useful claim is the visible analysis and test process, with its scope documented. Security is a set of concrete boundaries that can be reviewed and exercised.

## Public open source

### PersistScope · C++20

A bounded crash-consistency model checker with replayable witnesses, explicit incomplete outcomes and separate file/namespace durability semantics. It operates on supplied in-memory protocol models. An independent small-protocol oracle, sanitizer runs and fuzzing checks complement its tests.

[Source and examples](https://github.com/Nima0101/persistscope) · [Engineering deep dive](https://github.com/Nima0101/persistscope/blob/main/docs/engineering-deep-dive.md) · [CI](https://github.com/Nima0101/persistscope/actions/workflows/ci.yml) · [Releases](https://github.com/Nima0101/persistscope/releases)

### hidweave · Rust

An offline library and CLI that compares Human Interface Device report contracts and decodes identical bytes under different descriptors. An X/Y usage swap can change meaning without changing report length. Equivalent encodings normalize under the documented contract; unsupported constructs fail explicitly. Independent parser comparisons, exhaustive small-field decoding checks and fuzzing exercise complementary properties. Its contract comparison is a review signal with documented limits on what it establishes about device compatibility.

[Source and demo](https://github.com/Nima0101/hidweave) · [Contract](https://github.com/Nima0101/hidweave/blob/main/docs/contract.md) · [Verification](https://github.com/Nima0101/hidweave/blob/main/docs/verification.md) · [Releases](https://github.com/Nima0101/hidweave/releases)

PersistScope and hidweave publish Linux, macOS and Windows binaries with checksums. Their source, tests, CI and release pages provide distinct ways to inspect the work.

### Contingram · Rust

An offline library and CLI for bounded recovery-policy synthesis over finite agent-tool contracts. Decisions depend on observations, including cases where a lost response conceals an effect. A separate verifier checks policy or bounded-obstruction artifacts without invoking the search algorithm. Parsing and model lowering remain shared assumptions. Compute exhaustion returns unknown; results describe the supplied model and decision horizon. Policies do not execute or authorize real tool calls.

[Source and demo](https://github.com/Nima0101/contingram) · [Architecture](https://github.com/Nima0101/contingram/blob/main/docs/architecture.md) · [Verification](https://github.com/Nima0101/contingram/blob/main/docs/verification.md) · [CI](https://github.com/Nima0101/contingram/actions/workflows/ci.yml)

## Languages and technologies

C++20 and Rust support systems and developer-tool work. TypeScript, JavaScript and Node.js support APIs, workers and application contracts; Python supports acquisition and data processing. PostgreSQL, SQL and Supabase support transactional state and access controls. Swift, SwiftUI, actors, Keychain and CoreLocation support native lifecycle work. Next.js, React, HTML and CSS connect backend state to product interfaces.

The verification and delivery toolkit includes CMake, CTest, XCTest, GitHub Actions, Docker, sanitizers, fuzzing, CodeQL and Sentry. I choose tools for the boundary being tested: memory lifetime, state transition, input contract, deployment identity or observed behavior.

## Engineering method

Start with the invariant, identify its owner and define the failure states. Make uncertainty explicit, bound resource use and keep recovery repeatable. Then build checks that can contradict the design: competing owners, expired leases, account changes, interrupted writes, malformed data and delayed events. A useful counterexample is small enough to explain and replay.

I define the system boundaries, invariants, constraints, acceptance criteria and verification strategy. AI coding agents assist with inspection, implementation and iteration, including the standalone C++ samples. I remain responsible for architectural decisions, review and acceptance.

Source control, tests, CI, review and evidence checks remain acceptance gates. Source inspection, local tests, hosted CI, release artifacts and live verification answer different questions; I keep each conclusion within its supporting evidence. [Contingram’s AI-assisted engineering notes](https://github.com/Nima0101/contingram/blob/main/docs/ai-assisted-engineering.md) document this workflow in a public project.

Good discussion topics include a crash between submission and acknowledgement, accounting recovery after model completion, publication while ingestion is incomplete, or an account change during token refresh. Each tests whether the state model remains understandable when the happy path stops.

## Contact and links

Nima Khaki · Stockholm, Sweden

[nima.khakii@outlook.com](mailto:nima.khakii@outlook.com) · [GitHub profile](https://github.com/Nima0101) · [Engineering portfolio](https://nima0101.github.io/)
