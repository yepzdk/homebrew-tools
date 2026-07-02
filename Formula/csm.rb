class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.50"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.50/csm-darwin-arm64"
      sha256 "5abd4ad860a06ffa884b951aed88256cf9c5d387625649a956b80a7e158e32cc"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.50/csm-darwin-amd64"
      sha256 "e1be79058882ca54d235bb58fc1a1d298fe9a32450abe00272da1b6029c8f474"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.50/csm-linux-arm64"
      sha256 "9d426ac00a82650b928d42de45ed8f16087e2d47c26dab1cc2cbe69289f47d59"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.50/csm-linux-amd64"
      sha256 "71410ed91d52609b8a045d51ed7dc3199ab0646866972d430009e821963ef629"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
