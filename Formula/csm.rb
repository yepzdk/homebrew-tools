class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.34"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.34/csm-darwin-arm64"
      sha256 "83ad3f5a950e0d40463c679f463b9a0fea30056f4e30944b83a6ca4442f67f51"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.34/csm-darwin-amd64"
      sha256 "55445c95dc90be0a27235f7e02e31844eae718c427fbd9178c8653f127681a57"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.34/csm-linux-arm64"
      sha256 "1d182ea6c1353f2c4494aea58c2f1d475750d9e7fe44cc0f82cc925d9586794a"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.34/csm-linux-amd64"
      sha256 "533349883f6d3607027a56d016dea446b789e0b9a6851854861f97b7de22a77c"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
