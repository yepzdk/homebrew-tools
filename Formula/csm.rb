class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.13/csm-darwin-arm64"
      sha256 "861ead3c3b77826e52a4e8d7887ac26de94e84665370a6b74aec9a47e1281784"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.13/csm-darwin-amd64"
      sha256 "dd3c9163d39c6da789296f69fc738deabef9e4188f610f31b481bb1c60b1a2c4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.13/csm-linux-arm64"
      sha256 "53ade9c7489f228932bf7d10f0b74defc1429a4b8b17179683a9fe32f93da5a7"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.13/csm-linux-amd64"
      sha256 "b0b119e18f511e8c5320cbed0bd316e1d06e75de4f9fa9a4ac92fc8b4b808f53"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
