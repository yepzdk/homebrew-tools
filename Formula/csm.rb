class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.20/csm-darwin-arm64"
      sha256 "06f21d299b89c526ebdcde70f884ae2b0d87de21bdd3c58ed5b07e0c6bbd722b"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.20/csm-darwin-amd64"
      sha256 "6abea355f0bf927f7a97c3039445500edc998f65f005e186c92d0d9cd96fc6b7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.20/csm-linux-arm64"
      sha256 "1effb8475afb7f8384175844e02be1122f53620f353571b0c6717a395cd11dd6"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.20/csm-linux-amd64"
      sha256 "e41b96f2c6d0cf6de64e09cffbdfec41d2b424f4951c4b8d68934d6fedfc328b"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
