class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.21/csm-darwin-arm64"
      sha256 "bc9c8021ee0a7ea343976780b219c3e4c2ecf14f7dca3637af83be104eb9eead"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.21/csm-darwin-amd64"
      sha256 "5b6a4e4b99615d63743a3791807497fcd8bc77a22a0c75e3c5976f7b7cec9951"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.21/csm-linux-arm64"
      sha256 "43404cc1f28066bb0d3b9369ae7a8deec1fb4286fdd913c739437af82110dd1b"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.21/csm-linux-amd64"
      sha256 "7b092e870aaa017e57bd109dcd5f59c62b03f6d2332ea12f87f32c415960d689"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
