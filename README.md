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

| Formula | Description |
| ------- | ----------- |
| [`git-tool`](https://github.com/SierraSoftworks/git-tool) | Manage your Git repositories in a consistent folder structure |

More tools (grey, automate, github-backup, imgsort, buckle, shig, tailon,
tailservice, and others) are rolled out as their releases are wired up to the
tap.

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
