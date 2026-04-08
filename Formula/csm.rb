class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.35"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.35/csm-darwin-arm64"
      sha256 "38b9cf9bb8ef87e678a283ba34484484235d9168eb8d9be896f52ea07d66582c"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.35/csm-darwin-amd64"
      sha256 "b38d67d8efc45db277f23de38bcfb57ea909e887ebf7184dfb15cd5bdd0d01ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.35/csm-linux-arm64"
      sha256 "754a612b9e77cee7fbc0e7dd61e61413ca681626fbe1d72d4d03d4aa4c9465ec"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.35/csm-linux-amd64"
      sha256 "f8066c3c8e722ffabb35578ef9513dd19624dffcc5e9dcc2a13ed97099585ad1"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
