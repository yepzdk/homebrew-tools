class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.19/csm-darwin-arm64"
      sha256 "dd1462de3302c3d84ac5820dd1e5fe8f2e34f7ffaa4eeb0a417ee73c31bb3e98"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.19/csm-darwin-amd64"
      sha256 "3a2db61bb5cd9edb84e39d52ce2bad8ffede5bbe97f55a2a4a79df9a9fef7f1a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.19/csm-linux-arm64"
      sha256 "6a5d421688e8aa33b646a4cb63535fe7b10278f1f0cdd244a1a50dfabb4610ee"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.19/csm-linux-amd64"
      sha256 "5ab74ac319c7540b5c3d3bbcec50ab1efcd78128079541951a228161ebe8c587"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
