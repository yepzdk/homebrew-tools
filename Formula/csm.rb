class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.4.0/csm-darwin-arm64"
      sha256 "bfd6584438f6e0bd81b76486d6c5b743507777edcd79aa1cc570831597757f91"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.4.0/csm-darwin-amd64"
      sha256 "3c3d77530aa46e48a8f6279405a355ea9c5b662d9a16eafea2d166d85ded1cf1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.4.0/csm-linux-arm64"
      sha256 "ae7c942da42881c071185363ba35701fa41ddfc8761181698f50cce584bf3902"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.4.0/csm-linux-amd64"
      sha256 "0e13de122226753baaedf51153398706fdffaa640b973598850415bceb6c709a"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
