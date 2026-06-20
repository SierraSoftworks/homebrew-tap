# Sierra Softworks Homebrew Tap

Homebrew formulae for [Sierra Softworks](https://github.com/SierraSoftworks)
open-source tools. Formulae here are published and updated **automatically**
whenever one of the underlying projects cuts a new GitHub release, via the
[`SierraSoftworks/actions-tap`](https://github.com/SierraSoftworks/actions-tap)
GitHub Action — there are no manual steps.

## Usage

```bash
# Add the tap (once)
brew tap sierrasoftworks/tap

# Install a tool
brew install sierrasoftworks/tap/git-tool

# Keep everything up to date
brew update && brew upgrade
```

You can also install without tapping first:

```bash
brew install sierrasoftworks/tap/git-tool
```

## Available formulae

| Formula | Description | Install |
| ------- | ----------- | ------- |
| [`git-tool`](https://github.com/SierraSoftworks/git-tool) | Simplify checking out your Git repositories in a structured directory space | `brew install sierrasoftworks/tap/git-tool` |
| [`grey`](https://github.com/SierraSoftworks/grey) | Lightweight, clustered health probing with native OpenTelemetry support | `brew install sierrasoftworks/tap/grey` |
| [`automate`](https://github.com/SierraSoftworks/automate) | Rust-based automation server for scheduled and event-driven tasks | `brew install sierrasoftworks/tap/automate` |
| [`github-backup`](https://github.com/SierraSoftworks/github-backup) | Automatically back up your GitHub repositories to your local machine | `brew install sierrasoftworks/tap/github-backup` |
| [`imgsort`](https://github.com/SierraSoftworks/imgsort) | Sort and deduplicate your photos based on their EXIF metadata | `brew install sierrasoftworks/tap/imgsort` |
| [`buckle`](https://github.com/SierraSoftworks/buckle) | Minimum-viable bootstrapping for your infrastructure, with great observability | `brew install sierrasoftworks/tap/buckle` |
| [`mail-backup`](https://github.com/SierraSoftworks/mail-backup) | Back up your email mailboxes to your local machine | `brew install sierrasoftworks/tap/mail-backup` |
| [`on-call`](https://github.com/SierraSoftworks/on-call) | Compute a reasonable on-call schedule from declarative constraints | `brew install sierrasoftworks/tap/on-call` |
| [`shig`](https://github.com/SierraSoftworks/shig) | Cryptographically sign and verify files using SSH keys | `brew install sierrasoftworks/tap/shig` |
| [`tailon`](https://github.com/SierraSoftworks/tailon) | Manage and monitor applications on your machine via Tailscale | `brew install sierrasoftworks/tap/tailon` |
| [`tailservice`](https://github.com/SierraSoftworks/tailservice) | Easily expose services on your Tailscale network | `brew install sierrasoftworks/tap/tailservice` |
| [`hue`](https://github.com/SierraSoftworks/hue) | Control your Philips Hue lights from your command line | `brew install sierrasoftworks/tap/hue` |

## How it works

Each project's release workflow calls `SierraSoftworks/actions-tap`, which:

1. Authenticates to this repository using an organisation-level GitHub App.
2. Downloads the release's prebuilt binaries (`{tool}-{os}-{arch}`) and computes
   their `sha256` checksums.
3. Renders the formula and commits it to `Formula/`.

Updates are incremental and idempotent — each build platform updates its own
block in the formula, so no fan-in/coordination step is required.

## License

[MIT](./LICENSE)
