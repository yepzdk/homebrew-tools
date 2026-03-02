class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.24"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.24/csm-darwin-arm64"
      sha256 "4688f9696e375bd024b46ab7f3637a1885bf0709005d3a6a3d4894d3ac9dcb47"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.24/csm-darwin-amd64"
      sha256 "337571a61b800b07924cde100ee1ebc5fb303e35e0b93431b7fa9450d0272bd3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.24/csm-linux-arm64"
      sha256 "824f324ed207d3bd2565354df35e55385dba97cf1585653afc505996382d9380"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.24/csm-linux-amd64"
      sha256 "7709d2671bf68d763280e49277f0b50c065b9e2c0465907db5549034a11885c5"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
