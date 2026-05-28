class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.48"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.48/csm-darwin-arm64"
      sha256 "f25a2de8094f2c4fd7faab15831e22ead982840f38fe9dce598176e39279865d"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.48/csm-darwin-amd64"
      sha256 "d9f763296c0023a7c173181763dd606aa9d67f9c0a272af3c701d25096b7af58"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.48/csm-linux-arm64"
      sha256 "7e0d216f79025dd3c951232c66c04d6b9e2f0504f718e9eaa33d6ee3e11eafd4"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.48/csm-linux-amd64"
      sha256 "2b5ee6175b432902884d64065bd22a0ceb425b1e1155d1e8834aac85f4cf4a4e"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
