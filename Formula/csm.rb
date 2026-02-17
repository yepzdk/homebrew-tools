class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.18/csm-darwin-arm64"
      sha256 "3ecfc310321df6058b8f4bd69c45466241052893aec7ce4afffe5d33f71dd035"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.18/csm-darwin-amd64"
      sha256 "043067663f859593d27dd6845ebe2f1d3e461b4217287f6d511193fd13c3b3a1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.18/csm-linux-arm64"
      sha256 "c52fac589a44d8e9d11c61afbee6bc4f0932170c3358bf87632f72bb192f37f0"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.18/csm-linux-amd64"
      sha256 "2e221a0a37c89db4de2f70849d71ea8b233cab6d3a8ec38d81194b0a9ac6434c"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
