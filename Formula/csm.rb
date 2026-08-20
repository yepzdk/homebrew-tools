class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.54"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.54/csm-darwin-arm64"
      sha256 "5194338e87d7edd1e8bd93d52113a9f3aca20bf0545fa91dc546b8b0b5bbe158"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.54/csm-darwin-amd64"
      sha256 "4002244f694216b96e3ef57c91fc99d460b32f5f1a08d06af4f7a328b00273de"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.54/csm-linux-arm64"
      sha256 "9624bf194485a8fbd8ac1e73bb40a5afff1bca35b1c19265ae9552997480906c"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.54/csm-linux-amd64"
      sha256 "a0ca7fd787b6bbe7b8ff31ca41c7b1280ef8214a754cc18396abd58ff192db54"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
