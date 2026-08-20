class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.59"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.59/csm-darwin-arm64"
      sha256 "18b4117555bb9f1d7609b47ca55fbe2efafa23cbc344cac9d95a1ef8f5069358"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.59/csm-darwin-amd64"
      sha256 "9b9393ca23a10bc364d8a4f6076022677264cb0c0737a67292c79bfc2c55cfd6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.59/csm-linux-arm64"
      sha256 "ba8e500ea116f17435f7e25d4da15cf7a9d19d3c9e0649433c0fdf712ada15c6"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.59/csm-linux-amd64"
      sha256 "ebbb998e93ca949a65358d7746f560876e97221b1dd0e5901e5c73ded23cb23e"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
