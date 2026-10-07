# Nima Khaki

**Software / Systems Engineer · Reliable systems, AI infrastructure, backend & data**

I build around state, ownership and recovery: from agent-tool contracts and crash consistency to payment workflows, data publication and native applications.

Stockholm, Sweden · [Portfolio](https://nima0101.github.io/) · [Engineering index](ENGINEERING_INDEX.md) · [Email](mailto:nima.khakii@outlook.com)

## Contingram — recovery for AI-agent tools

<img src="assets/projects/contingram.jpg" alt="Contingram project emblem" width="160">

**[Contingram](https://github.com/Nima0101/contingram) · Rust library + CLI**

Created and maintained by Nima Khaki

An agent calls a payment-like tool. The response is lost; the effect may already have happened. What can it safely do next?

Contingram performs **offline bounded recovery-policy synthesis** over finite AI-agent tool contracts. It determines whether an observation-based policy can safely reach the modeled goal within a decision bound. A separate verifier checks emitted artifacts without trusting the search algorithm; parsing and model lowering remain shared assumptions. A completed search can establish no policy within that horizon; exhausted compute budgets return **UNKNOWN**. It never invokes production tools itself.

[Model & limits](https://github.com/Nima0101/contingram/blob/main/docs/architecture.md) · [Verification](https://github.com/Nima0101/contingram/blob/main/docs/verification.md) · [CI](https://github.com/Nima0101/contingram/actions/workflows/ci.yml)

## Public open source

<img src="assets/projects/persistscope-hidweave.jpg" alt="PersistScope and hidweave project logos" width="240">

**[PersistScope](https://github.com/Nima0101/persistscope) · C++20** — Crash-consistency model checking for small persistence protocols, with replayable counterexamples. Separates file-data and directory durability; reports incomplete exploration explicitly.

Created and maintained by Nima Khaki

**[hidweave](https://github.com/Nima0101/hidweave) · Rust** — HID report-contract analysis: identical bytes can change meaning after a descriptor change even when report length stays the same. Unsupported constructs fail explicitly.

Created and maintained by Nima Khaki

Both provide public source, multi-platform CI and releases, with sanitizer and fuzzing checks. Inspect their contracts and verification scope: [PersistScope](https://github.com/Nima0101/persistscope/blob/main/docs/architecture.md) · [hidweave](https://github.com/Nima0101/hidweave/blob/main/docs/contract.md).

## Created product systems

### Bistam · Rider, Driver & Partner

<p>
  <img src="assets/projects/bistam-rider.webp" alt="Bistam Rider wordmark" width="96">
  <img src="assets/projects/bistam-driver.jpg" alt="Bistam Driver wordmark" width="96">
  <img src="assets/projects/bistam-partner.jpg" alt="Bistam Partner wordmark" width="96">
</p>

Created and engineered by Nima Khaki

A multi-surface mobility and commerce platform: backend APIs, PostgreSQL and security boundaries, payment reconciliation, Swift/SwiftUI native applications, maps/location, partner/device execution, CI and observability.

### Antagningsdata · Data engineering

<img src="assets/projects/antagningsdata.jpg" alt="Antagningsdata wordmark" width="210">

Created and engineered by Nima Khaki

A Swedish education-data platform: Python ingestion, provenance and lineage, deterministic identity, normalization/quarantine and reviewed publication. PostgreSQL, durable jobs and recovery connect source evidence to TypeScript/Next.js readers.

### Cederdalen · Product & commerce

<img src="assets/projects/cederdalen.jpg" alt="Cederdalen Natursten &amp; Material logo" width="210">

Created and engineered by Nima Khaki

B2B product workflows in Next.js/React, TypeScript and PostgreSQL/Supabase: transactional quote/order flow, server validation, access boundaries and RLS, accessibility and technical SEO.

## How I engineer with AI

I use OpenAI Codex/ChatGPT and other coding agents as constrained collaborators. I define system boundaries, failure models, invariants, acceptance criteria, security constraints and evidence requirements. Agents help research alternatives, inspect systems, implement changes, propose test hypotheses and challenge designs.

**Research → boundaries → implementation → adversarial review → deterministic/property/fuzz/security tests → hosted CI → runtime/public evidence → release.** Checks are selected for the system and claim.

AI assists the engineering loop; executable evidence decides what is accepted. Source review, local tests, CI and live verification answer different questions.

**Engineering scope:** systems/reliability, backend/distributed systems, data, native/mobile/device, product/commerce, security/auth, CI/CD/observability and AI/MCP tooling.

**Core technologies:** C++20, Rust, TypeScript/Node.js, Python, PostgreSQL/SQL, Swift/SwiftUI, Next.js/React.

[Engineering index](ENGINEERING_INDEX.md) · [Visual portfolio](https://nima0101.github.io/) · [nima.khakii@outlook.com](mailto:nima.khakii@outlook.com)
