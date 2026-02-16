class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.15/csm-darwin-arm64"
      sha256 "02337843a43e520bb85aa2130de418d263620064ca661e4e42054b5607eb0337"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.15/csm-darwin-amd64"
      sha256 "74ea3d9ee06c57e2d07f62215345247c5813f1865ee26f0ed594a5dda7a0d7ee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.15/csm-linux-arm64"
      sha256 "e42d27e670b700260ff2ec1be3c7b6d9162f265b9f362d38bc5ca657c6127ab0"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.15/csm-linux-amd64"
      sha256 "419a3252c61431155ac5543287aeb2db9e9afea7dbaed7055ec978cc76f85a3b"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
