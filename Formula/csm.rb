class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.62"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.62/csm-darwin-arm64"
      sha256 "27308c5e4989b4b8a4ffe2d3e5181edf7fb594bcd71886c666e5daa366afcedc"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.62/csm-darwin-amd64"
      sha256 "79622fe32526140f3a0d5d53cfee0df6aae1110092e620d5b4fdfb616e32e432"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.62/csm-linux-arm64"
      sha256 "a183de9457c9116d7ff94a3052064ed7db83e857b5f8f11c833065de6d9b7778"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.62/csm-linux-amd64"
      sha256 "c4d82bf0a50d7f0f99af0128e587f811e3ebcaba115180a08f67f2b2b5aa2285"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
