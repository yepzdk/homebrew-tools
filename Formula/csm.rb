class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.60"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.60/csm-darwin-arm64"
      sha256 "ac36b236c5f5ef1a6bb7a11eff09a5da088311d8fc8cb452bcce3d06eb1ea4d1"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.60/csm-darwin-amd64"
      sha256 "f1ac6c55714d1d3dfa716603a587473bfe616b94fb8d411426ae70feb201997d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.60/csm-linux-arm64"
      sha256 "7c13e31316e73add84960b4d98b4f444429ad3aff374da4c02e17a648e36a6e4"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.60/csm-linux-amd64"
      sha256 "c3eb678735881fcd7dbceeb0dbb88cc07ac251dfcbf2daa62829fb53adde1ed1"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
