class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.29"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.29/csm-darwin-arm64"
      sha256 "5e548f8c881a7f3138f8deca5b45d25a9fa64b894e29f50403a82ad2392d28f9"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.29/csm-darwin-amd64"
      sha256 "15e6afc942e1d19918fc56f79921d54f9491370b2163b98f5b4ca404d19e8ff0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.29/csm-linux-arm64"
      sha256 "b156a904f4dab71d9b9a74679c76474db1929a9753920c7367b0a96b4535189c"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.29/csm-linux-amd64"
      sha256 "071ca5f430f9316752ad0f292013eb2a276e46056a965f3ae90eff0c9fbb16ed"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
