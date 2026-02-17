class Picky < Formula
  desc "Helper tool to keep Claude in line and create great quality code"
  homepage "https://github.com/yepzdk/picky-claude"
  version "0.0.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yepzdk/picky-claude/releases/download/v0.0.0/picky-darwin-arm64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/yepzdk/picky-claude/releases/download/v0.0.0/picky-darwin-amd64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yepzdk/picky-claude/releases/download/v0.0.0/picky-linux-arm64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/yepzdk/picky-claude/releases/download/v0.0.0/picky-linux-amd64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "picky-darwin-arm64" => "picky"
      else
        bin.install "picky-darwin-amd64" => "picky"
      end
    elsif OS.linux?
      if Hardware::CPU.arm?
        bin.install "picky-linux-arm64" => "picky"
      else
        bin.install "picky-linux-amd64" => "picky"
      end
    end
  end

  test do
    system "#{bin}/picky", "--version"
  end
end
