class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.3/csm-darwin-arm64"
      sha256 "72efe27bcd8c24b166c3e71474c0ca8a3e9c3af2543030bb68cb414e5d403da0"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.3/csm-darwin-amd64"
      sha256 "ba3379ee062aa681ce577e904817863ac832bdf86b0381a88b14ce1eb5086177"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.3/csm-linux-arm64"
      sha256 "fd562fc7c087cf45883ce0804c650e0952228777c401f190257ae0c61d180fda"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.3/csm-linux-amd64"
      sha256 "787056c5b1ff83def553c54c66963c33bb6d469e6ec58675f847fea8bc73b458"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
