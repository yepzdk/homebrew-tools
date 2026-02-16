class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.14/csm-darwin-arm64"
      sha256 "f3369344c3e151f80e9612eba04512e0c1cacdd5f8d7c60c2cbde0e8b56fc00e"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.14/csm-darwin-amd64"
      sha256 "91eeb30d5ac3359fedd90676e9db4108c6ddceaf0b719ede3bd3b3fcaa9e7d69"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.14/csm-linux-arm64"
      sha256 "c9cf3b497d7e8b9788573b266a9eff4569045ea433d16d6beb60b675f73c3f72"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.14/csm-linux-amd64"
      sha256 "61c189269645e7ef71e8ab996120e2b59b098c384807bf91509175e0a2d446b0"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
