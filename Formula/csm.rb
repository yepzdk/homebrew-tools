class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.2.4/csm-darwin-arm64"
      sha256 "f3cd470e0b5b3fed0b1ca9469de0cf0c5e26ec6565a5d94612372ad40477a077"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.2.4/csm-darwin-amd64"
      sha256 "f10c0210f236538482c64f0eb5ccd64b3099a9da9f8eb112fa77f23d3bff2828"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.2.4/csm-linux-arm64"
      sha256 "fca4d3332e6f532e251d435d09affa7b043e868115b91a02db0450a28075ed47"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.2.4/csm-linux-amd64"
      sha256 "618cb74d04c519bd86b83b4725edd27581096f7ea26f5165b6c9766128da2ae2"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
