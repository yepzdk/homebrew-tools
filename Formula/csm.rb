class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.10/csm-darwin-arm64"
      sha256 "4403a33a44fc4be00b49cd46865b95b402b1f447ea238b4e3f4bc0ef00520226"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.10/csm-darwin-amd64"
      sha256 "2f1752178acbe1d081f2ad17deae44d08d046f555535e49003e9bf35279963f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.10/csm-linux-arm64"
      sha256 "5c137f080dbfa4cd135cd356fd23c1d7bc93be78a450194670cc5dd1ae888577"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.10/csm-linux-amd64"
      sha256 "a83f68b6101f25d56f4b615e5924424b61836dca392bf141fcaf57251e39c703"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
