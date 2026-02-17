class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.17/csm-darwin-arm64"
      sha256 "1bc3f702e1a759e98a5257f93f82c54eaa2b3816db5e5ac460d8bd27a5a11624"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.17/csm-darwin-amd64"
      sha256 "1b9c4d2827f83f323289d49563bcba569a9695a8a63dd2a4860ced390ab44f57"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.17/csm-linux-arm64"
      sha256 "65c6ae8ce3d94c541221cd146567a25bd3e2411d06d2260a982926fe9c49c72d"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.17/csm-linux-amd64"
      sha256 "60e0925a53bd697c4080451181f59fe69799f67b8928efa8971120aa31ee9cff"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
