# Nima Khaki

**Software / Systems Engineer · Reliable systems, backend & data**

I build around state, ownership and recovery: from crash-consistency tools to payment workflows, data publication, native applications and constrained AI tooling.

Stockholm, Sweden · [Email](mailto:nima.khakii@outlook.com) · [Engineering index](ENGINEERING_INDEX.md) · [Portfolio](https://nima0101.github.io/)

<picture>
  <source media="(prefers-color-scheme: dark)" srcset="assets/verification-dark.svg">
  <img src="assets/verification-light.svg" alt="A state trace branches at a failure and returns to an earlier state for replay." width="840">
</picture>

## Open source you can inspect

**[PersistScope](https://github.com/Nima0101/persistscope) · C++20** — A crash-consistency model checker for small persistence protocols. Produces replayable counterexamples and reports incomplete exploration when a budget is exhausted. File data and directory durability have distinct modeled boundaries.

[Model & limits](https://github.com/Nima0101/persistscope/blob/main/docs/architecture.md) · [CI](https://github.com/Nima0101/persistscope/actions/workflows/ci.yml) · [Releases](https://github.com/Nima0101/persistscope/releases)

**[hidweave](https://github.com/Nima0101/hidweave) · Rust** — An offline library and CLI for Human Interface Device (HID) report contracts. Shows how identical bytes change meaning under a descriptor change, including an X/Y swap that leaves report length unchanged.

[Contract & limits](https://github.com/Nima0101/hidweave/blob/main/docs/contract.md) · [CI](https://github.com/Nima0101/hidweave/actions/workflows/ci.yml) · [Releases](https://github.com/Nima0101/hidweave/releases)

PersistScope and hidweave have Linux, macOS and Windows releases, with public CI covering tests, sanitizers, fuzzing checks and CodeQL analysis.

**[Contingram](https://github.com/Nima0101/contingram) · Rust** — Offline recovery-policy synthesis for finite agent-tool contracts. A separate verifier checks policy artifacts within a decision bound; compute exhaustion stays unknown. It never invokes tools.

[Model & limits](https://github.com/Nima0101/contingram/blob/main/docs/architecture.md) · [Verification](https://github.com/Nima0101/contingram/blob/main/docs/verification.md) · [CI](https://github.com/Nima0101/contingram/actions/workflows/ci.yml)

## Broader engineering work

- **Systems & reliability:** C++ ownership, concurrency, deterministic state machines, durable journals and failure-path verification.
- **AI & agent tooling:** recoverable AI accounting, schema-validated MCP tools, bounded execution and evidence checks.
- **Backend & data:** TypeScript/Node.js APIs and workers; payment reconciliation; Python ingestion, PostgreSQL transactions, provenance and reviewed publication.
- **Native, product & platform:** Swift/SwiftUI session and location lifecycle; commerce workflows; resource-aware CI and release-linked observability.

The [engineering index](ENGINEERING_INDEX.md) explains these mechanisms, their verification scope and the decisions behind them.

## How I work

Define the invariant, identify who owns the transition, then test the failure path. I use AI agents under explicit constraints and review; acceptance depends on executable checks. Source review, local tests, CI and live verification each answer different questions.

Core technologies: **C++20, Rust, TypeScript / Node.js, Python, PostgreSQL / SQL, Swift / SwiftUI, Next.js / React.**

For engineering conversations: [nima.khakii@outlook.com](mailto:nima.khakii@outlook.com).
