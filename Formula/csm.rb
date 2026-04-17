class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.38"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.38/csm-darwin-arm64"
      sha256 "904e4069f22f40d0bbee05b645ca19bf090aa44b77e4683d497ba00fb6666247"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.38/csm-darwin-amd64"
      sha256 "53191c5419316a3d0caf7d3ff539ef2cb4d1b87b091a07258bc3c593a49ccd3d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.38/csm-linux-arm64"
      sha256 "796e80deaa4256d9197a8b127f7a95eff95111a6c45f5a9d1844f7ad683bd75b"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.38/csm-linux-amd64"
      sha256 "c2883a5a4ffc28567fa36748f0ab70781ddbe749adc2371ab84458f5aabc8807"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
