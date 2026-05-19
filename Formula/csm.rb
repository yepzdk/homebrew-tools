class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.44"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.44/csm-darwin-arm64"
      sha256 "f019f2ec2150abfac536fe7ac9f9baaa7c168f38adb18e670ad15d21ff7fc895"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.44/csm-darwin-amd64"
      sha256 "a3466fb60261a5840353bf926e3dc998ad65b5316058affa9dab30af158048e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.44/csm-linux-arm64"
      sha256 "ff1ac89033e66cdc37262754334cf4103a309bca85a3f517f3cc7dd4c7a67f7c"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.44/csm-linux-amd64"
      sha256 "04bdec7775164a0c8764a7e69a87d6f39d3ea47101238b0e5308608e03b00bb4"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
