class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.2.0/csm-darwin-arm64"
      sha256 "2f1d0363550e77dbacf54395255fcda5ed26aa6a112c498c330072d6150e2a67"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.2.0/csm-darwin-amd64"
      sha256 "433ff431ac73caa86071caceb7d3fe93d50e47104fb19d4bb77a9eda222ab18c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.2.0/csm-linux-arm64"
      sha256 "565cae5dc54f3f416cfb3935fedaa92df589446af3e0cb3d569f9ce39e01d7e6"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.2.0/csm-linux-amd64"
      sha256 "fa45c6bbfcba02650a2cd47b51562bb99554bdf54b13391e7c34b4b8e45509c6"
    end
  end

  def install
    binary_name = "csm-#{OS.kernel_name.downcase}-#{Hardware::CPU.arch == :arm64 ? "arm64" : "amd64"}"
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
