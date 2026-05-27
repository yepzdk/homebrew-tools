class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.46"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.46/csm-darwin-arm64"
      sha256 "2e2e315932792b55d3786acda60bd50f3a963da43d0c8f1233f0619c2e0a633e"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.46/csm-darwin-amd64"
      sha256 "a864cc8e9730cf85f26065f088df9fac894d0b211ad6c27b94bca5fe4bc0fd3f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.46/csm-linux-arm64"
      sha256 "686e0e050ca1a8bb6fca500d27cc53c682e5fc9ac85f6adfd50d5ec4ebec48f2"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.46/csm-linux-amd64"
      sha256 "10a3d73c637849928e63307cec56fefe4d771bec44c4ff3a6d043c4c2dda9dca"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
