class CastMcp < Formula
  desc "Read-only MCP server over your Claude Code execution record (cast.db)"
  homepage "https://github.com/ek33450505/cast-mcp"
  url "https://github.com/ek33450505/cast-mcp/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "ae7d259ba8b24202badb5c97bbbda3364b65a7fa3846c58fd8074a25a0997c9b"
  license "MIT"

  def install
    prefix.install "install.sh"
    prefix.install "uninstall.sh"
    prefix.install "VERSION"
    prefix.install "README.md"
    prefix.install "LICENSE"
    (prefix/"scripts").install Dir["scripts/*"]
    (prefix/"bin").install Dir["bin/*"]

    # Symlink the launcher into HOMEBREW_PREFIX/bin so it's on PATH immediately.
    # The launcher resolves the server via ../scripts/cast-mcp-server.py (symlink-aware).
    bin.install_symlink prefix/"bin/cast-mcp"
  end

  def caveats
    <<~EOS
      cast-mcp is now on your PATH.

      Opt in from any MCP client:
        cast-mcp config     # print the .mcp.json entry / `claude mcp add` line
        cast-mcp status     # verify cast.db is present and the handshake succeeds

      cast-mcp is read-only — cast.db is opened mode=ro; it never writes.

      See: https://github.com/ek33450505/cast-mcp
    EOS
  end

  test do
    assert_predicate prefix/"bin/cast-mcp", :exist?
    assert_match "cast-mcp", shell_output("#{bin}/cast-mcp version 2>&1")
  end
end
