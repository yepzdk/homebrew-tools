class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.45"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.45/csm-darwin-arm64"
      sha256 "208ffe8523078942a060f48cf06284b45d865ecd21c8841655ef0604608d3189"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.45/csm-darwin-amd64"
      sha256 "3910056a7982ec1cfd5eeb91942e1cff77b0f802d531a381031bc5fd2c823f20"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.45/csm-linux-arm64"
      sha256 "959b18fc765c5a76cbf08877e02c4e7a1cdf9f9fd5aa132454cc99d85fdb152b"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.45/csm-linux-amd64"
      sha256 "9c443ce1664edecc48c55d78e68cc21b45c0045264588c74f30b3ce6194c513b"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
