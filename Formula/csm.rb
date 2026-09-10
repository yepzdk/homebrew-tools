class Csm < Formula
  desc "CLI tool to monitor Claude Code and Oh My Pi sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v1.3.0/csm-darwin-arm64"
      sha256 "ff93d9922ebafc878fc90f012949eb2d0b24f1a1f5005abb88afd5ab6e1c3bfe"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v1.3.0/csm-darwin-amd64"
      sha256 "078fc9e80bb9a4a1a49a6b5f89b777faec523b9ee5a6d844033f1136057d9cd6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v1.3.0/csm-linux-arm64"
      sha256 "79339b169fa44620802929466795777ad10a7c9d5c9aaf7b12eb47c101287ea7"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v1.3.0/csm-linux-amd64"
      sha256 "114612d706ecd4dd10d5d65524fd3e794db1e0da14fe114594fe6865e561effb"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
