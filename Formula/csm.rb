class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.0/csm-darwin-arm64"
      sha256 "b6cb62c6470b46f6153a923a697e7f04df68b938032bb7c01c23d8e566927fbd"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.0/csm-darwin-amd64"
      sha256 "83b6c766bc9586df55a626ab0512fd9a99a17acb8a0c6322fc15c96a5008957d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.0/csm-linux-arm64"
      sha256 "e14af7f0dbe5ced98a99b8b2196d8796dcf3abf10a7d53ebc888f57954bd99da"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.0/csm-linux-amd64"
      sha256 "2dbdf6b90bab91864459a61560b14c4d293f3636d0959c073d3f45a42b24b59b"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
