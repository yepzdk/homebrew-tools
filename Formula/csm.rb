class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.43"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.43/csm-darwin-arm64"
      sha256 "a4ce9f513b0af7dc50f367288a61308ccb8f5e40f4723b79d0cb429ea7913ac4"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.43/csm-darwin-amd64"
      sha256 "0107712749e47af1561b4e6abe2653f6941f5444cc2b944e511998f6eed89175"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.43/csm-linux-arm64"
      sha256 "82c3d23792ef55ab52c8d6899f4fea4eae9a56432cc1d15986dff1071c062363"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.43/csm-linux-amd64"
      sha256 "6409e77ce6daf2f932c09892e157caec7e70f60f92d4e13efc9e877e69f81472"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
