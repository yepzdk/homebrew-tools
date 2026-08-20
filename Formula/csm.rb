class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.55"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.55/csm-darwin-arm64"
      sha256 "36163fd813e9f0c7c5fd405dd808352a0017297229775a28142e2b932b279d70"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.55/csm-darwin-amd64"
      sha256 "ad3a76959481ac1983afaf1425272ecd89f04962fa5247e60294f684560f1752"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.55/csm-linux-arm64"
      sha256 "44c2639a4787ebb7a22a554e540d59ed39d6a81a547297b7d8f9642ffe9e9e82"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.55/csm-linux-amd64"
      sha256 "57762b8619b520787d5989f22786a74f4b0a9fc69a3a19c9afebd9ab7b885f90"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
