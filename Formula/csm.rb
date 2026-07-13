class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.51"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.51/csm-darwin-arm64"
      sha256 "19ff4dbf1b8705b6e33d801f7056915615a49c06a63e6deeaee4cd86a761989f"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.51/csm-darwin-amd64"
      sha256 "165fb67ff7019e0533f86beceb63ae12912eb125e2d1254b01a09b3cc01a16d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.51/csm-linux-arm64"
      sha256 "8c9be1426c0659d806326f71073801937e282c2e7e78ddb01c8decc35a7113cf"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.51/csm-linux-amd64"
      sha256 "7c3edd66f98966d8a93ed722839f6b49b75d8dd8cae45e15ac49dd0d5e9bcfad"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
