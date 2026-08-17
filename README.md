# homebrew-tap

Homebrew tap for [Zashiki](https://github.com/kounetsuman/zashiki) — a macOS desktop cockpit that brings your Claude Code sessions into one window.

## Install

```sh
brew install --cask kounetsuman/tap/zashiki
```

This installs `Zashiki.app` into `/Applications` from the latest packaged release.

> **Apple Silicon only** for now, and the app is **unsigned** — on first launch, right-click → "Open" to get past Gatekeeper.

## Uninstall

```sh
brew uninstall --cask zashiki           # remove the app
brew uninstall --zap --cask zashiki     # also remove ~/.zashiki, caches, and the LaunchAgent
```

## Notes

This tap tracks Zashiki's GitHub Releases. The bare `brew install --cask zashiki` (official homebrew-cask) is tracked in [zashiki#27](https://github.com/kounetsuman/zashiki/issues/27).
