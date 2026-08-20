class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.53"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.53/csm-darwin-arm64"
      sha256 "1c1899cb534f05008ca2f27164d9096de788aece07773227ad102a67609877ed"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.53/csm-darwin-amd64"
      sha256 "81148f85cbec08da3903821593089cf4b8fe9042d96b04c258e94ce38eb04aaa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.53/csm-linux-arm64"
      sha256 "ce0dbe63c8a47132514d23837eb19eb219cdd5aaaa87ef0451bb548267f7f1f7"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.53/csm-linux-amd64"
      sha256 "cca351219f90a22ece3516e189817d8d6aa3e285d3cc9559575d6766ac2edc35"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
