class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.39"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.39/csm-darwin-arm64"
      sha256 "6e90879891288fb9a1ff0f5e561bcd0387a378aa5e3cac56408b99724ddd134a"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.39/csm-darwin-amd64"
      sha256 "ba0bd36e83fa72097790998e63cafc83feb69e58c48eab2c622d17a2f478dddc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.39/csm-linux-arm64"
      sha256 "b308eb8eaf7551981c157ff501a459aaf168a900aa819d6005a5b7d520150842"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.39/csm-linux-amd64"
      sha256 "771ae9f224c1a78473c94db4c1b39240c0b7c9b4e9f6068d9bd2f96ab9908227"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
