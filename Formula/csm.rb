class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.5/csm-darwin-arm64"
      sha256 "a4f311a2a1bf28c32f9d010cbd5e935af129fe1caf292da780edc1323185bd2e"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.5/csm-darwin-amd64"
      sha256 "82bab5812fe8776a3b1e414941ce725ac04c5833f544cf4e598c387caab3f0a5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.5/csm-linux-arm64"
      sha256 "cd41c3a6b1c269c7b8f3339a472e291f146ed0ed4bb126dedc38400df9b3dbc1"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.5/csm-linux-amd64"
      sha256 "f55220275cc1cecd070755ae9c36645fd3ac0f95ab079581af47d5ef8290060d"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
