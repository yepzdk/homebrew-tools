# Homebrew Tools

This is a Homebrew tap for distributing CLI tools.

## Workflows

### Update CSM Formula (`.github/workflows/update-csm.yml`)

Automatically updates the `csm` (Claude Sessions Monitor) formula when a new release is published.

**Triggers:**
- `repository_dispatch` with type `update-csm` (triggered from claude-sessions-monitor releases)
- `workflow_dispatch` for manual runs (version input required, e.g., "0.2.2")

**What it does:**
1. Validates version format (X.Y.Z semver without `v` prefix)
2. Downloads all 4 binaries from the release:
   - `csm-darwin-arm64`
   - `csm-darwin-amd64`
   - `csm-linux-arm64`
   - `csm-linux-amd64`
3. Calculates SHA256 hashes for each binary
4. Regenerates `Formula/csm.rb` with new version and hashes
5. Commits and pushes the changes

**Required secrets (in this repo):**
- `GH_PAT`: Personal Access Token with `repo` scope for pushing commits. Required because `GITHUB_TOKEN` doesn't have write access for `repository_dispatch` events triggered from another repo.

**Debugging:**
- If downloads fail: Check that the release exists at `https://github.com/yepzdk/claude-sessions-monitor/releases/tag/vX.Y.Z` and all 4 binaries are uploaded
- If version validation fails: Ensure version is passed without `v` prefix (e.g., "0.2.2" not "v0.2.2")
- If push fails (exit code 128): Ensure `GH_PAT` secret is set with a valid PAT that has `repo` scope

**Triggering from claude-sessions-monitor:**
The release workflow in claude-sessions-monitor should include:
```yaml
- name: Update Homebrew formula
  env:
    HOMEBREW_TAP_TOKEN: ${{ secrets.HOMEBREW_TAP_TOKEN }}
  run: |
    curl -X POST \
      -H "Accept: application/vnd.github+json" \
      -H "Authorization: token $HOMEBREW_TAP_TOKEN" \
      https://api.github.com/repos/OWNER/homebrew-tools/dispatches \
      -d "{\"event_type\":\"update-csm\",\"client_payload\":{\"version\":\"${GITHUB_REF_NAME#v}\"}}"
```

Requires a PAT with `repo` scope stored as `HOMEBREW_TAP_TOKEN` secret.

### Update CSM MenuBar Cask (`.github/workflows/update-csm-menubar.yml`)

Automatically updates the `csm-menubar` cask when a new release includes `.app` bundles.

**Triggers:**
- `repository_dispatch` with type `update-csm-menubar` (triggered from claude-sessions-monitor releases)
- `workflow_dispatch` for manual runs (version input required, e.g., "0.4.0")

**What it does:**
1. Validates version format (X.Y.Z semver without `v` prefix)
2. Downloads both zip files from the release:
   - `CSMMenuBar-darwin-arm64.zip`
   - `CSMMenuBar-darwin-amd64.zip`
3. Calculates SHA256 hashes for each zip
4. Regenerates `Casks/csm-menubar.rb` with new version and hashes
5. Commits and pushes the changes

**Required secrets (in this repo):**
- `GH_PAT`: Same PAT as used for csm (already configured).

**Debugging:**
- If downloads fail: Check that the release exists at `https://github.com/yepzdk/claude-sessions-monitor/releases/tag/vX.Y.Z` and both `.zip` assets are uploaded
- If version validation fails: Ensure version is passed without `v` prefix (e.g., "0.4.0" not "v0.4.0")
- If push fails (exit code 128): Ensure `GH_PAT` secret is set with a valid PAT that has `repo` scope

**Install via Homebrew:**
```bash
brew install --cask yepzdk/tools/csm-menubar
```

### Update itkdev-claude-code Formula (`.github/workflows/update-itkdev-claude-code.yml`)

Automatically updates the `itkdev-claude-code` formula when a new release is published.

**Triggers:**
- `repository_dispatch` with type `update-itkdev-claude-code` (triggered from itkdev-claude-code releases)
- `workflow_dispatch` for manual runs (version input required, e.g., "0.1.0")

**What it does:**
1. Validates version format (X.Y.Z semver without `v` prefix)
2. Downloads all 4 binaries from the release:
   - `itkdev-claude-code-darwin-arm64`
   - `itkdev-claude-code-darwin-amd64`
   - `itkdev-claude-code-linux-arm64`
   - `itkdev-claude-code-linux-amd64`
3. Calculates SHA256 hashes for each binary
4. Regenerates `Formula/itkdev-claude-code.rb` with new version and hashes
5. Commits and pushes the changes

**Required secrets (in this repo):**
- `GH_PAT`: Same PAT as used for csm (already configured).

**Debugging:**
- If downloads fail: Check that the release exists at `https://github.com/yepzdk/itkdev-claude-code/releases/tag/vX.Y.Z` and all 4 binaries are uploaded
- If version validation fails: Ensure version is passed without `v` prefix (e.g., "0.1.0" not "v0.1.0")
- If push fails (exit code 128): Ensure `GH_PAT` secret is set with a valid PAT that has `repo` scope

**Triggering from itkdev-claude-code:**
The release workflow in itkdev-claude-code should include:
```yaml
- name: Update Homebrew formula
  env:
    HOMEBREW_TAP_TOKEN: ${{ secrets.HOMEBREW_TAP_TOKEN }}
  run: |
    curl -X POST \
      -H "Accept: application/vnd.github+json" \
      -H "Authorization: token $HOMEBREW_TAP_TOKEN" \
      https://api.github.com/repos/yepzdk/homebrew-tools/dispatches \
      -d "{\"event_type\":\"update-itkdev-claude-code\",\"client_payload\":{\"version\":\"${GITHUB_REF_NAME#v}\"}}"
```

Requires a PAT with `repo` scope stored as `HOMEBREW_TAP_TOKEN` secret in the itkdev-claude-code repo.
