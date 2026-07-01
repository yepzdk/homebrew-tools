class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.49"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.49/csm-darwin-arm64"
      sha256 "80f14c1c8ada38e52c1f535bdfe1d0eaa7d2101428210d0c1f744225dfd91183"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.49/csm-darwin-amd64"
      sha256 "f19b65025d848fd3483bc1616c472b91136ec4ec196bcaf724425da9cb96e8a9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.49/csm-linux-arm64"
      sha256 "801019b108999eb77d6ae91f5c948fd1455b3e9819adcbbb2ae46668f68a2af1"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.49/csm-linux-amd64"
      sha256 "ac04600d545938c965330fcd83f07ed00c38a5f91fab16d730471050ab28e787"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
