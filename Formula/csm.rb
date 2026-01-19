class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.4/csm-darwin-arm64"
      sha256 "bd1d6f95ce35c5725bcb6707da13a834725a5b18c23c662a793f223bd9f3ebea"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.4/csm-darwin-amd64"
      sha256 "50fa3764e17097c188bfdbe478238778307e7621a603a3dbbd1fa44c7fa8b445"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.4/csm-linux-arm64"
      sha256 "830a7ae8d01563538d960d23c54ca152a4b994e23b4ffa11407944f7bbd3a30a"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.4/csm-linux-amd64"
      sha256 "1f24bc6116d835c4c27188b485d3bc837ee44049bb938ecb29aa56a4c6a8f4bf"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
