class Csm < Formula
  desc "CLI tool to monitor Claude Code and Oh My Pi sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v1.1.0/csm-darwin-arm64"
      sha256 "11f8ede6751a3c30f04d2acc7cd44be86ee67620d1eb2dbc49ad6b89a59e78a6"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v1.1.0/csm-darwin-amd64"
      sha256 "983eac840cf099313581f01d6624dfee85aa17c50e8179b6f649390b56c9609e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v1.1.0/csm-linux-arm64"
      sha256 "ae8b8dd635381a5c6da3ce00a16f0dc11df84886f5f0afb11c46ac042e745dba"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v1.1.0/csm-linux-amd64"
      sha256 "a71115ca82af769d2092f55eba3110a79dab0dbe0cc97c170a787c2d29557d3b"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
