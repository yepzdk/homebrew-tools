class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.1/csm-darwin-arm64"
      sha256 "7b849d37a5aa8eac85bd395214a5280fab9f9bc37b6e1ebb6ec6ae806f7278a1"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.1/csm-darwin-amd64"
      sha256 "d12b4443a0e89dfd3e7b10463d90d488626af844427b88b611d584b24a43de47"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.1/csm-linux-arm64"
      sha256 "170f882bbc47d28f52a0cdf2b7e7c3f2c7e55b94902d5f1cd34eee82356e3199"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.1/csm-linux-amd64"
      sha256 "f805345136cc62a4ccdf5fd2c466c6f5210b4df8b869f273a981b2757c608468"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
