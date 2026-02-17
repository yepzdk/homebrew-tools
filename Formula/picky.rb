class Picky < Formula
  desc "Helper tool to keep Claude in line and create great quality code"
  homepage "https://github.com/yepzdk/picky-claude"
  version "0.3.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/picky-claude/releases/download/v0.3.0/picky-darwin-arm64"
      sha256 "1edc87fcf26bfe2b3acba89994ffb9c0b12f13cad2693f5b2c98baaa586188e8"
    end
    on_intel do
      url "https://github.com/yepzdk/picky-claude/releases/download/v0.3.0/picky-darwin-amd64"
      sha256 "c8318a67473d92f3c669bef2f5cc1266eba482fcdad90fc44b1e7a1e4c93edcf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/picky-claude/releases/download/v0.3.0/picky-linux-arm64"
      sha256 "5b3af485ede16b308df787864cdbf96a54f112f2c7710f637bfa2a6846510e9f"
    end
    on_intel do
      url "https://github.com/yepzdk/picky-claude/releases/download/v0.3.0/picky-linux-amd64"
      sha256 "50a708d36969e8f3be38c51fe47c9f87c56a3f65bde6becb3a9a6d7a94c1e336"
    end
  end

  def install
    bin.install Dir["*"].first => "picky"
  end

  test do
    assert_match "picky", shell_output("#{bin}/picky --version")
  end
end
