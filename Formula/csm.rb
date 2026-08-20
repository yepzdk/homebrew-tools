class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.56"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.56/csm-darwin-arm64"
      sha256 "046efea5b6be63a1b56f728e9181ad4ed3aff7f9816f1a72e8a8fba883d1e20a"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.56/csm-darwin-amd64"
      sha256 "c310ee93a68c6a30af28bdf08d2c720aa6a119a2441c24923c11f1244b211abe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.56/csm-linux-arm64"
      sha256 "e2c12b1d5677f1f4f307c0d600632a5fd64d098edc06f04fa227d2dda68465af"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.56/csm-linux-amd64"
      sha256 "8fba363065a9057008af5d1d72b2eab59e698ba287871aca32e44d6e65ed1df5"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
