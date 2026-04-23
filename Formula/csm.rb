class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.41"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.41/csm-darwin-arm64"
      sha256 "9b3194efa5305a50ddcc556a967c1d77b801f7097f94d08c835da58c23665e8e"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.41/csm-darwin-amd64"
      sha256 "806c18a1af5dbf4a95707c007c22fd31e9e26910df7761527e41a06092fb0ecf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.41/csm-linux-arm64"
      sha256 "68a9a2beabdb0fc267b1f1d6af21839e60502dcb47628fa6a2a801aff9c36b75"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.41/csm-linux-amd64"
      sha256 "dce8fbc781849df29345f94396eb66cfb808a338f7c624fb7be8b5c09fd29b24"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
