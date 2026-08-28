class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.7.0/csm-darwin-arm64"
      sha256 "56f5329026cc43cbae6e4105342ee643ba5cfb7809830e83e38dd80b98fc33e2"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.7.0/csm-darwin-amd64"
      sha256 "4d0f03049d7fdcdf24e050125d25ffb551931f24fd9b88ba1d80e132b0b9c039"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.7.0/csm-linux-arm64"
      sha256 "9014f4a44883db814e26a06e0f7861eec5cff3f491583a63fcf996010404757f"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.7.0/csm-linux-amd64"
      sha256 "321360bbfe70e18b742940279246a4cca84d82d2f0e16b695915d2a559a83c02"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
