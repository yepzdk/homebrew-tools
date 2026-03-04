class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.28"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.28/csm-darwin-arm64"
      sha256 "62fb7aa632f52cf8d1ff486699050b9bb9bd079971ae76bfd1a706341e81c422"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.28/csm-darwin-amd64"
      sha256 "8d8f95721aa4c85c90ea688d497a14428a6e975f20b2ae7f2b949442a8d662e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.28/csm-linux-arm64"
      sha256 "67576c8f3dc5c591cb142763507d33552536e0227dcf986eeacaf14d29696751"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.28/csm-linux-amd64"
      sha256 "f78527feee354a567c963ef9e06dc9ab74734f4d32f11fb4adf95d664d069c98"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
