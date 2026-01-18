class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.2.3/csm-darwin-arm64"
      sha256 "d6ffe62eafb04ab7dfe552e16bfad47caad8547b1c4d4261a6c39edf047029e6"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.2.3/csm-darwin-amd64"
      sha256 "ba11c65e402ccc1739b55016b9a91d7413970e6de7b8a6fe90d7361bb506c321"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.2.3/csm-linux-arm64"
      sha256 "fbe18b485efc454ee3bb30c1cc66ff14288ce86eb5dddc17b7797ed648de17a8"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.2.3/csm-linux-amd64"
      sha256 "5abaccba289880c3b014177c39d3875bbe0b1ffe3b5b88c3f8d7ea8b6a581053"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
