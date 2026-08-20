class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.57"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.57/csm-darwin-arm64"
      sha256 "3f41ae3284dc4f0a2e17ddecbec96c6d30b21251721c3da5abcb8bffba4a59ee"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.57/csm-darwin-amd64"
      sha256 "f97600cc8a83beebe4e59b31eb3898cd9535fbb73f61eb5b5fd9e072561d4dad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.57/csm-linux-arm64"
      sha256 "ba8236faa59a2037eb734a0b9cad635d64f81764bdc5956d56af1e03a2eaf220"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.57/csm-linux-amd64"
      sha256 "b4796978fed500e8a8f3beed50d9a17b349dc93449b96d0ebdaa6ddb502858d3"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
