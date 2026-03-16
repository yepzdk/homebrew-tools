class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.32"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.32/csm-darwin-arm64"
      sha256 "129984ba951127e9b33dbfdc61f50436baab67ca61e668a0956e891ee56455b6"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.32/csm-darwin-amd64"
      sha256 "57e101fcc553ae9338d06560773f1bdb100a0862a1753963f0c89ee827af5b56"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.32/csm-linux-arm64"
      sha256 "d1060770a4df7413423b76744651c106347b7a3b87ea02f5356132873c5eeec1"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.32/csm-linux-amd64"
      sha256 "d063ad2390e57810057694022fef9faa4f50df16e3b59875714c045867c53cf7"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
