class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.36"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.36/csm-darwin-arm64"
      sha256 "3cab6935246b44350cbbc8a594e34208c87b07b7e6d3dbf8499d9733f46edccf"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.36/csm-darwin-amd64"
      sha256 "b7fca20f03b587a9c30f0e7a7ccb3a81e0d25943450ed5670e480867281f0e3e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.36/csm-linux-arm64"
      sha256 "b3a0e5469b3b9a91da694a1e9ecd618f24f2779b09bff25f3afe12e6485ee57f"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.36/csm-linux-amd64"
      sha256 "780386e9b0acd5fdf88c879e4c3e2ede6e9bc533cfad217472945f9ac3c9d7bc"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
