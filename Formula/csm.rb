class Csm < Formula
  desc "CLI tool to monitor Claude Code and Oh My Pi sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v1.0.0/csm-darwin-arm64"
      sha256 "6fd7697b7e134a02708116030b961beff17776e88ab31cf4df06841ccf487c17"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v1.0.0/csm-darwin-amd64"
      sha256 "6d84f1b35a3957783d0764be925cffc6b76cc9dd4ed2293307b0532a68240a84"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v1.0.0/csm-linux-arm64"
      sha256 "f744a6ae3129c853f277ae71c60e8c02fde82dae0166da2b92ab95d0ec8fc7d7"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v1.0.0/csm-linux-amd64"
      sha256 "cb97466d4e71c7655562a3ddc6cbc3f66b63f6962f5f768ab80b7a65e7199525"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
