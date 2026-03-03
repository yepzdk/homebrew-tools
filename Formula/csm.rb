class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.27"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.27/csm-darwin-arm64"
      sha256 "b9592e63a058cb59b741f21b3e0f6224a253625e166d9c08b5fe9efe7e21a160"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.27/csm-darwin-amd64"
      sha256 "84d932f64a56f504fb35aa2779cbda046267ddb960771112abf35d583adf33a7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.27/csm-linux-arm64"
      sha256 "d9990984072ff57911cd100b0caa99de6f0be1758f21d029a2397427574f6b20"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.27/csm-linux-amd64"
      sha256 "29c4f32988f0da7bee92cd5efa759154bb8cab8d66a126ac892f2d2922b2c94e"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
