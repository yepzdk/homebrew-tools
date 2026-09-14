class Csm < Formula
  desc "CLI tool to monitor Claude Code and Oh My Pi sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "1.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v1.3.1/csm-darwin-arm64"
      sha256 "18bbaa53dc4925ad71a1611946bf1706641a4b9798c0977de2d10da8f869c8d3"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v1.3.1/csm-darwin-amd64"
      sha256 "acfecd248ffa7f5a1d5d098efe88a8bd9f131647ad5afaca074f23f0974e06c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v1.3.1/csm-linux-arm64"
      sha256 "1f7c4a492e277626e9e4393403d4b02a0f2205bc797e539ce89697f1eb28efa0"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v1.3.1/csm-linux-amd64"
      sha256 "305c3cd22530db38ee62edb4cb4613f5afe217b0b5266a84a54540774b1268de"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
