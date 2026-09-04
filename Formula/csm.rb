class Csm < Formula
  desc "CLI tool to monitor Claude Code and Oh My Pi sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v1.2.0/csm-darwin-arm64"
      sha256 "a0dc71b56b8da1ce061b704676a9ae273410b2d1cea5526031dfa854f129b489"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v1.2.0/csm-darwin-amd64"
      sha256 "dc9c03f38985b0b203937086fc9ba56e04091fb8ee43e3b7e02066c8e17b9f2d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v1.2.0/csm-linux-arm64"
      sha256 "f540b40acb70125926fd85a7ba7aeba9b580b97d509c17fdb754f4006b2669ca"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v1.2.0/csm-linux-amd64"
      sha256 "255f3441614b3c7b0507fc9a66fa9a0e65be12061f7883e688b7dafd38a3db1c"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
