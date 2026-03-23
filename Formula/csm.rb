class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.33"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.33/csm-darwin-arm64"
      sha256 "648faa42a90f5824bc900381c1505a384d314c0802ce08200a6e67d4ee906f82"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.33/csm-darwin-amd64"
      sha256 "166e2d94436b319acaba59d5bac25910d3109e22aa2c4674b64eed6d53c60fd5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.33/csm-linux-arm64"
      sha256 "425e10795f44f3439782348e569a167813d17294c92c5c3a071a333b0523e749"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.33/csm-linux-amd64"
      sha256 "47b037f942f0641c177f5dc6856836357404df734ffa1aa1907be5af039cae1a"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
