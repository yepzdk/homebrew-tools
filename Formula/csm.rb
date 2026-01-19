class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.6/csm-darwin-arm64"
      sha256 "e71c39c50412420cba259e8210f5351a1a9bbc759ca9615256f5457e5f545848"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.6/csm-darwin-amd64"
      sha256 "c3cd09a496dd4c949dca3f982cf0a36cfade3301c78611bf68592be2f31c7d44"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.6/csm-linux-arm64"
      sha256 "eb4f8a965eec7ed87515b5f7374b095be029ef1e9f02104f3be8ea299ba9984d"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.6/csm-linux-amd64"
      sha256 "3695016b198a3fda0aab90bbad1960d57589c9c1b490d0f867c2f7c4a3657b58"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
