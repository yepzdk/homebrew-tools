class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.30"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.30/csm-darwin-arm64"
      sha256 "f0bb0c77da20bb69400477fa5db43d36756352cdfdd182d9e6f0aed3b41a3016"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.30/csm-darwin-amd64"
      sha256 "3780474b878b04c8cbcb05bd246357013f254f33afb4eb00c06ef6ba1a702f47"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.30/csm-linux-arm64"
      sha256 "9073aa152bb559a6cab7bd40359e023d55d1d756a1b5ff5bc48c1e43a456d950"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.30/csm-linux-amd64"
      sha256 "6d1d441fcd09e085d8d765539829c8208a0b394b2aee7037df90e9b715cb6773"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
