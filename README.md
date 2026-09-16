# Homebrew Tap for CASOON Tools

**This tap is retired.** CASOON tools are no longer distributed via Homebrew. The formulae here
were maintained by hand and fell behind their releases; every tool now ships an install script
that downloads the release archive for your platform and verifies it against the checksums
published with the release.

| Tool | Install |
| --- | --- |
| docgen | `curl -fsSL https://raw.githubusercontent.com/casoon/typst-business-templates/main/install.sh \| bash` |
| imgen | `curl -fsSL https://raw.githubusercontent.com/casoon/imgen/master/install.sh \| sh` |
| nosecrets | `curl -fsSL https://raw.githubusercontent.com/casoon/nosecrets/main/install.sh \| sh` |
| auditmysite | see [releases](https://github.com/casoon/auditmysite/releases) |
| renderreport | see [releases](https://github.com/casoon/renderreport/releases) |

If you installed one of these through the tap, remove it with `brew uninstall <tool>` and
`brew untap casoon/tap`, then use the install script instead.

## License

MIT
