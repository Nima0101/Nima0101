# Nima Khaki

**Software / Systems Engineer · Reliable systems, backend & data**

I build around state, ownership and recovery: from crash-consistency tools to payment workflows, data publication, native applications and constrained AI tooling.

Stockholm, Sweden · [Email](mailto:nima.khakii@outlook.com) · [Engineering index](ENGINEERING_INDEX.md) · [Portfolio](https://nima0101.github.io/)

<picture>
  <source media="(prefers-color-scheme: dark)" srcset="assets/verification-dark.svg">
  <img src="assets/verification-light.svg" alt="A state trace branches at a failure and returns to an earlier state for replay." width="840">
</picture>

## Contingram · AI-agent systems & verification

**Created and maintained by Nima Khaki · Rust · Offline library & CLI**

[Contingram](https://github.com/Nima0101/contingram) asks: **can an agent safely finish when a tool response is lost?** A timeout can hide a completed effect; a retry can duplicate it. I built Contingram to explore that recovery boundary through finite tool contracts and independently checked evidence.

- **Bounded recovery-policy synthesis:** derive observation-based decisions that keep every possible modeled world safe and reach a known goal within a decision horizon.
- **Independent artifact verification:** a separate verifier checks policies and bounded no-policy certificates without calling the solver. Parsing and model lowering remain shared trust boundaries.
- **Explicit uncertainty:** exhausted search node/work limits return `UNKNOWN`, with no certificate. A checked no-policy result applies only to the supplied model and horizon.

The engineering work spans Rust, deterministic state-machine modeling and replay, failure recovery, adversarial tests, reference oracles, fuzzing, CI/security checks and release engineering. Contingram analyzes contracts offline; it never invokes tools or authorizes execution. Its results do not establish that a model faithfully describes a real service.

[Source & demo](https://github.com/Nima0101/contingram) · [Model & limits](https://github.com/Nima0101/contingram/blob/main/docs/architecture.md) · [Verification](https://github.com/Nima0101/contingram/blob/main/docs/verification.md) · [CI](https://github.com/Nima0101/contingram/actions/workflows/ci.yml) · [Security](https://github.com/Nima0101/contingram/actions/workflows/security.yml) · [Releases](https://github.com/Nima0101/contingram/releases)

## More open source · created & maintained by Nima Khaki

**[PersistScope](https://github.com/Nima0101/persistscope) · C++20** — A crash-consistency model checker for small persistence protocols. Produces replayable counterexamples and reports incomplete exploration when a budget is exhausted. File data and directory durability have distinct modeled boundaries.

[Model & limits](https://github.com/Nima0101/persistscope/blob/main/docs/architecture.md) · [CI](https://github.com/Nima0101/persistscope/actions/workflows/ci.yml) · [Releases](https://github.com/Nima0101/persistscope/releases)

**[hidweave](https://github.com/Nima0101/hidweave) · Rust** — An offline library and CLI for Human Interface Device (HID) report contracts. Shows how identical bytes change meaning under a descriptor change, including an X/Y swap that leaves report length unchanged.

[Contract & limits](https://github.com/Nima0101/hidweave/blob/main/docs/contract.md) · [CI](https://github.com/Nima0101/hidweave/actions/workflows/ci.yml) · [Releases](https://github.com/Nima0101/hidweave/releases)

PersistScope and hidweave have Linux, macOS and Windows releases, with public CI covering tests, sanitizers, fuzzing checks and CodeQL analysis.

## Product engineering · software by Nima Khaki

| Project | Engineering focus | Explore |
| --- | --- | --- |
| **Bistam product family** | Mobility and commerce workflows; payment reconciliation, state ownership, native session and location lifecycle. | [Product](https://bistam.com/) · [Engineering](https://nima0101.github.io/#bistam) |
| **Antagningsdata** | Swedish education data; acquisition, canonical identity, provenance and reviewed publication. | [Product](https://antagningsdata.se/) · [Data engineering](https://nima0101.github.io/#antagningsdata) |
| **Cederdalen** | B2B catalog and quote workflows; typed data, customer/staff boundaries and versioned acceptance. | [Product](https://cederdalen.com/) · [Product engineering](https://nima0101.github.io/#cederdalen) |

These are public product experiences. The engineering notes distinguish implementation review, recorded checks and deployment evidence.

## Broader engineering work

- **Systems & reliability:** C++ ownership, concurrency, deterministic state machines, durable journals and failure-path verification.
- **AI & agent tooling:** recoverable AI accounting, schema-validated MCP tools, bounded execution and evidence checks.
- **Backend & data:** TypeScript/Node.js APIs and workers; payment reconciliation; Python ingestion, PostgreSQL transactions, provenance and reviewed publication.
- **Native, product & platform:** Swift/SwiftUI session and location lifecycle; commerce workflows; resource-aware CI and release-linked observability.

The [engineering index](ENGINEERING_INDEX.md) explains these mechanisms, their verification scope and the decisions behind them.

## How I work

I define the system boundaries, invariants, constraints, acceptance criteria and verification strategy. AI coding agents assist with inspection, implementation and iteration. I remain responsible for architectural decisions, review and acceptance.

Source control, tests, CI, review and evidence checks remain acceptance gates. I distinguish source inspection, local test results, hosted CI, release artifacts and live verification; each supports a different claim. [Contingram’s AI-assisted engineering notes](https://github.com/Nima0101/contingram/blob/main/docs/ai-assisted-engineering.md) document that workflow in a public project.

Core technologies: **C++20, Rust, TypeScript / Node.js, Python, PostgreSQL / SQL, Swift / SwiftUI, Next.js / React.**

For engineering conversations: [nima.khakii@outlook.com](mailto:nima.khakii@outlook.com).
