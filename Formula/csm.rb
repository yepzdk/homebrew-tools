class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.23/csm-darwin-arm64"
      sha256 "27b31f7fac490adedf826d919960001c584092457bb49371dfe7e705087cfd01"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.23/csm-darwin-amd64"
      sha256 "4cf8e3aa2f55815f96dcd8d6f95227a1d75f1be92ee4e5b54e39395506c4d182"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.23/csm-linux-arm64"
      sha256 "ae44c3c0ab5388c6d8808c5f235e6d8e5ea063022e2ea98bc6985c7e6e551c77"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.23/csm-linux-amd64"
      sha256 "32446cd573a4c63d1bfeed9d70f00669115ab2d738062c1a834b6e5b3e77afa1"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
