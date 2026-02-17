class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.16/csm-darwin-arm64"
      sha256 "ce0ea453d86bef7f2dafbcb8ddff415a9563fe10b0ddf8ca099622ccf17e6e70"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.16/csm-darwin-amd64"
      sha256 "43a7dbba10e7ebff1bd51565e1d9729c018450636222c08de3b708850a302029"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.16/csm-linux-arm64"
      sha256 "86d2e0df8363fa6d14b9f2ebb1e4c0b2148f5fbf19de83f4cf1dc37baffed385"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.16/csm-linux-amd64"
      sha256 "1e6dd1d91272a3d98c543fbc46d73c195c709766d9752ebf983349b2bf9f4a1f"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
