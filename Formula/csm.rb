class Csm < Formula
  desc "Claude Sessions Monitor - Monitor your Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.0.0/csm-darwin-arm64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.0.0/csm-darwin-amd64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.0.0/csm-linux-arm64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.0.0/csm-linux-amd64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "csm-darwin-arm64" => "csm"
      else
        bin.install "csm-darwin-amd64" => "csm"
      end
    elsif OS.linux?
      if Hardware::CPU.arm?
        bin.install "csm-linux-arm64" => "csm"
      else
        bin.install "csm-linux-amd64" => "csm"
      end
    end
  end

  test do
    system "#{bin}/csm", "--version"
  end
end
