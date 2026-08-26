class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.6.0/csm-darwin-arm64"
      sha256 "6f7418ce6d7b6a92d0ecb52ded14b04c722b43bdaf77003bc009e64914c8e8b1"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.6.0/csm-darwin-amd64"
      sha256 "1e62b791c782bfc8f50e4174795dc35e2f25a04ba086810894d1596f7b8cfd23"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.6.0/csm-linux-arm64"
      sha256 "3dd01b64497e4761059f37fce12fd844314f2dd53acf85c757a29cc78856a0ed"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.6.0/csm-linux-amd64"
      sha256 "148f7685d8c1c280c8eca7d483f59b34a9455c3a55555521c4dd7e9941be8a72"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
