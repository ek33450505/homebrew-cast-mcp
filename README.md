# homebrew-cast-mcp

Homebrew tap for [cast-mcp](https://github.com/ek33450505/cast-mcp) — a read-only MCP server over your Claude Code execution record (`cast.db`).

## Install

```bash
brew tap ek33450505/cast-mcp
brew install cast-mcp
cast-mcp config
```

The formula symlinks `cast-mcp` into `$(brew --prefix)/bin`, so it's on your PATH the moment install completes.

## Uninstall

```bash
brew uninstall cast-mcp
brew untap ek33450505/cast-mcp
```

## See also

- [cast-mcp](https://github.com/ek33450505/cast-mcp) — source repo
- [claude-agent-team](https://github.com/ek33450505/claude-agent-team) — full CAST framework
- [The full CAST ecosystem](https://github.com/ek33450505/claude-agent-team#the-cast-ecosystem)
