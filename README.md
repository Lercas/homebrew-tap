# Lercas Homebrew Tap

Homebrew formulae for [Prowl](https://github.com/Lercas/prowl), a fast configurable secret scanner.

```sh
brew install Lercas/tap/prowl
prowl version
```

The formula installs the prebuilt static binary for your platform (macOS/Linux, arm64/amd64).
The released binaries run the regex/checksum/entropy cascade by default; the in-process ML stage
needs a cgo build of the tool (`go install github.com/Lercas/prowl/tool/cmd/prowl@latest`) or the
`--ml-url` sidecar.
