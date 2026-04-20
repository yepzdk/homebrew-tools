class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.40"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.40/csm-darwin-arm64"
      sha256 "91a77703fec98a6e0413d4b3983e3379c11eeeaa9d28744e8249d8c9010afce8"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.40/csm-darwin-amd64"
      sha256 "afef1b229d2b50313b398821ccd6397302f193aa3071a9ab865e66517db9a8d0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.40/csm-linux-arm64"
      sha256 "14c377256f96be32071cd94d6f31f19c526d86e3499f0310ff8156bf7672e1c6"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.40/csm-linux-amd64"
      sha256 "e8c6fbdd70a302898d8a12fc58c9546536565ec31a033300062470ea4f1a254f"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
