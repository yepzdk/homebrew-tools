class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.5.0/csm-darwin-arm64"
      sha256 "10813456f19d13315b02a3e981f3eaefd2cffefbc4f227430a61f820c7f2bcc9"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.5.0/csm-darwin-amd64"
      sha256 "577e4e797d6c9bd90b3e98bae656f63192baea0e1fa60be03047b05e8b724132"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.5.0/csm-linux-arm64"
      sha256 "099bdf9c7ffadc7a38dcc34d83bbba60ca39b7ede27d10c56ec11713a1e62953"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.5.0/csm-linux-amd64"
      sha256 "c578c3beaaac8af139a1c4942d605c76e7bafa68dbc39a0fcf86ff82c912ca90"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
