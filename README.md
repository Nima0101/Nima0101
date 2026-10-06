# Nima Khaki

**Systems & software engineering**

I build tools that make failure modes inspectable: how data survives a crash, how contracts change, and how to reproduce what went wrong.

[nima.khakii@outlook.com](mailto:nima.khakii@outlook.com)

<picture>
  <source media="(prefers-color-scheme: dark)" srcset="assets/verification-dark.svg">
  <img src="assets/verification-light.svg" alt="A state trace branches at a failure, with a dashed path returning to replay an earlier state." width="840">
</picture>

## Selected open source

### [PersistScope](https://github.com/Nima0101/persistscope) · C++20

A crash-consistency model checker for small persistence protocols, with replayable counterexamples. Explore writes, syncs, renames and recovery; distinguish a complete result under the model from an exhausted search budget.

[Model & limits](https://github.com/Nima0101/persistscope/blob/main/docs/architecture.md) · [CI](https://github.com/Nima0101/persistscope/actions/workflows/ci.yml) · [Releases](https://github.com/Nima0101/persistscope/releases)

### [hidweave](https://github.com/Nima0101/hidweave) · Rust

An offline library and CLI for comparing Human Interface Device (HID) report contracts. Decode identical bytes under two descriptors to expose changes in meaning, including an X/Y swap that leaves report length unchanged.

[Contract & limits](https://github.com/Nima0101/hidweave/blob/main/docs/contract.md) · [CI](https://github.com/Nima0101/hidweave/actions/workflows/ci.yml) · [Releases](https://github.com/Nima0101/hidweave/releases)

Both ship Linux, macOS and Windows binaries, with public CI covering tests, sanitizers, fuzzing checks and CodeQL analysis.

## Engineering approach

- **Correctness:** explicit invariants, bounded models and versioned contracts.
- **Developer tooling:** useful diagnostics, reproducible examples and inspectable failure evidence.
- **Delivery:** verify library consumers, CLI behavior and release packaging; document the limits alongside the result.

For AI-assisted work, I require explicit constraints, adversarial review and executable checks. Generated changes must satisfy the same contracts as any other implementation.
