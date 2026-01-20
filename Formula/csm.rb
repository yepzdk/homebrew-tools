class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.8/csm-darwin-arm64"
      sha256 "0cfbd32036cf2cdebb4edda6254552da9ad31fbc3722a328c8bf111a05f000be"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.8/csm-darwin-amd64"
      sha256 "22e52de1d6210ba3e48472e3e973f475de3dc4e3ddeebac025a4643fc0929b3c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.8/csm-linux-arm64"
      sha256 "b6e358d07c6cadec9149b60357d73f17040399458baa76fa41c5f5c992e9b4f5"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.8/csm-linux-amd64"
      sha256 "c1aececeb660f914e3c076353e1a94b8253cd1f6f14462950c6e94918f7ed6f7"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
