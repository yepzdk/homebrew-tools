class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.22/csm-darwin-arm64"
      sha256 "176cb4c2591293804185cacbb79dfdd92ace3795d713500cabaee02847a51634"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.22/csm-darwin-amd64"
      sha256 "ddcce918bcb5797d81ef6b2d3dd6b5579a38d2483be5b6e55a130a6c22a32163"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.22/csm-linux-arm64"
      sha256 "b725cdefddfe0aeda44a39658fa2d62fd20a9ef4af97c0df5e8903ad46b82431"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.22/csm-linux-amd64"
      sha256 "951650a190568160ff47eb94c46476e92b81f06dc410e71cb66f2635c449e446"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
