class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.42"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.42/csm-darwin-arm64"
      sha256 "1e113c2da8fb3f1cd847d0e8f301578f2db089c1a3cd7f367ed0f00815bcca89"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.42/csm-darwin-amd64"
      sha256 "c19cf5f04dc58fbca6b13b5211baa1179b12cb40cd82018a11ad4b081d8dcb1e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.42/csm-linux-arm64"
      sha256 "2f8372d7c8076b05a0fe9057a98fcf9959f17ba8564a255e925bd62fbf736fa9"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.42/csm-linux-amd64"
      sha256 "5f104ae5ce0a001a571c329bc01c9ebd6110e24824c0fe316aadd1b11a838748"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
