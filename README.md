# Homebrew tap

Casks for [Findy](https://github.com/didate/findy), a free, open-source, native file manager for macOS.

```bash
brew tap didate/tap
brew trust didate/tap
brew install --cask findy
```

`brew trust` exists in recent versions of Homebrew, which refuse casks from a third-party tap until it is trusted. If your Homebrew does not know the command, skip that line.

Findy is not notarized by Apple yet. After installing, open it once, dismiss the warning, then go to System Settings > Privacy & Security and click Open Anyway.
