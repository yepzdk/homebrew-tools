class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.11/csm-darwin-arm64"
      sha256 "b916a3394a79dff9e5455f504d8323f1b57a5777ac1dfa2bfe43ad0c32f4e0fb"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.11/csm-darwin-amd64"
      sha256 "01555eb84ad96df6be29d3b029edcd599a1dc8d5e39b4b4018b504b3bb1aca7c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.11/csm-linux-arm64"
      sha256 "45a93d95ef8ffbbaee4d3a0b9f1faf790f5b37f661f82e8c64c7e56f96849ae2"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.11/csm-linux-amd64"
      sha256 "5721325ca611ff2ead4c6e4d2918e1ce067893082ef20342c1d7578f976f5a1a"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
