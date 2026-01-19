class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.2/csm-darwin-arm64"
      sha256 "a95411c3112729124ba3a09490835a652d99b06a7c9cd2d748d79e8047aed194"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.2/csm-darwin-amd64"
      sha256 "c3d03003eb6169761c614301f70d9c4af7455f0b84b34ee08cf53f51f1188a28"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.2/csm-linux-arm64"
      sha256 "0777fdcdf121a0d8bc10416f2d72d35095272c72ed5afa40128a3aab27987a7a"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.2/csm-linux-amd64"
      sha256 "239be1d9a3e44edeb5b316b775c28f17113d52700698539335e55929ece4f1ca"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
