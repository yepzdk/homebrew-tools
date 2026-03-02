class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.25"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.25/csm-darwin-arm64"
      sha256 "075faf557a6991ea13946a01522bbcec9b938dacb1654cd914184484f9e3b747"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.25/csm-darwin-amd64"
      sha256 "ff9e138aabe54b13508110431a06ef281b14d035310384ef372825bb02c200c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.25/csm-linux-arm64"
      sha256 "5ceec47985424b1681be42ec6f6b41259f5d0a070b71ba3e761b23c3e41cfd37"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.25/csm-linux-amd64"
      sha256 "5e77fbdeb1c1399ec8c4db5e414a62f5a0d7294c16dfae9fa283afcd6b56a7ba"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
