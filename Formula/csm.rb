class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.58"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.58/csm-darwin-arm64"
      sha256 "bc416a53c18fed8633a38c3083f33d774c124fee37946518b106c46b47a8419a"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.58/csm-darwin-amd64"
      sha256 "3eff1fea7c22f6366556ba90a55f9c47b731ddfe1397d3e7b37c5558f3909aaf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.58/csm-linux-arm64"
      sha256 "7a8dd7f19bb38b69b8b3c2c0ff021ae81f88253d8bc47c38757a5f507ed6d2f4"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.58/csm-linux-amd64"
      sha256 "dfb819ec56513fa9857a68c78221c6544bcc31cd6d4073cf0cf833ee1583f11b"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
