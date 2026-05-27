class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.47"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.47/csm-darwin-arm64"
      sha256 "67e7b2c71fd7fe006d76bd5edafa74291c98cbe8ae1d400c0a2af8328f038512"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.47/csm-darwin-amd64"
      sha256 "38b51563f1224ff40cedb232562546d245a89b8d61d948c9a90dd32d6e52753b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.47/csm-linux-arm64"
      sha256 "fed16b596d9367fc2c17ab4870623ecaf5932cfa06d057d69083238a1e50939f"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.47/csm-linux-amd64"
      sha256 "7eb039a0cca5e8cb680438e7935c75d7e14577b3693191ac3cac08b0d0fd5c65"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
