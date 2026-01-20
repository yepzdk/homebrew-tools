class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.9/csm-darwin-arm64"
      sha256 "ad3f63410d11f8a857dab57f9ef220e115bfe54fedb80e3044e6f90a6f31e95d"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.9/csm-darwin-amd64"
      sha256 "7009aeaee9eca1f905282158a2dd900490b1e8eff0a20f28aca595dcbb55dd70"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.9/csm-linux-arm64"
      sha256 "8c439cbd5729ab45dc33c97e0f13d974444bffccf935d79d3aa34af043c3d52d"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.9/csm-linux-amd64"
      sha256 "93d5094cd1d3677b2bf09bd331f793d3ca36f09420a7769fa26d501a2523335c"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
