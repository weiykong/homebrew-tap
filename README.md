# homebrew-tap

Personal tap for my macOS apps. Install with:

```bash
brew tap weiykong/tap
brew install --cask cliphistory
brew install --cask quickmd
```

These apps are ad-hoc signed (no Apple Developer ID), so Gatekeeper shows a warning on
first launch. That is why they cannot live in the official `homebrew/cask` repo, which
deprecates casks that fail Gatekeeper checks. This tap does not bypass Gatekeeper — it
just makes the install command work.
