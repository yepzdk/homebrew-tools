class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.7/csm-darwin-arm64"
      sha256 "7b453fd94721de95b581c5eca4d0120beb0f6723580c69aaacf4c5af94d295b5"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.7/csm-darwin-amd64"
      sha256 "56ebe708ebd5317a423620f4cdcd03ba47fde48709e08bec5dd634fca7e3e601"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.7/csm-linux-arm64"
      sha256 "ef6345940f302e1729a716d804d61ba037f4c1bbea6e33b08479b1e596f6d99a"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.7/csm-linux-amd64"
      sha256 "b347cc7b48ca0e67c47c44e049dc364b19a2c7331602860858fab162336c3573"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
