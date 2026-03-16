class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.31"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.31/csm-darwin-arm64"
      sha256 "d751390b2c65a5f60621ea1f3374d198c92964ec94ee4b586dc784315d9ab54d"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.31/csm-darwin-amd64"
      sha256 "c461793764a54e3052af3e951fdfbcd102b59be689205dba565c69a903edebdf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.31/csm-linux-arm64"
      sha256 "e3e8fec1f4a88375c987f442aff28653c87716a77ee794e94efdf07a14b6d2f3"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.31/csm-linux-amd64"
      sha256 "1536c5aff5dcb7cabacb41a8fae73d1c9d49ed3497c3c83f5436daed89720fb6"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
