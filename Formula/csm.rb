class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.26"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.26/csm-darwin-arm64"
      sha256 "d9f62d8aee4eb42823bf209ed2166a7a004d585a8c44868af7291de1e234d5aa"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.26/csm-darwin-amd64"
      sha256 "f364f9cdcb973730e83e44707b3ad13efd095ba3c70b9037315413448cd51783"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.26/csm-linux-arm64"
      sha256 "d36d2253a2a7a0ee580a320bbce6aac2f4f31c4a9e3a31cd2ce6a96643ed85a7"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.26/csm-linux-amd64"
      sha256 "e04f9e6cf521512118d98ac23edc65df2a1252fbc5b9053e58b1f3428249a66a"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
