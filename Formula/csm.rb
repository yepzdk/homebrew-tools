class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.52"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.52/csm-darwin-arm64"
      sha256 "5f4b9d584972c3221e2ccde88bcad2f6549b999e1cb394ab6b661a546642f9d6"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.52/csm-darwin-amd64"
      sha256 "ea8dfffe44af3c70304cb46a0e52fd51260d82eb1f291f0c55681d58c3d0c751"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.52/csm-linux-arm64"
      sha256 "d91b7e8c3427e07bc53bd5ba6aded04a3d82a32afe40549dc0660dd8bbb90de3"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.52/csm-linux-amd64"
      sha256 "cb41ef40a39504af084664d9a5b3b0ffeb44d58122729ade85a14a2cc405ed83"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
