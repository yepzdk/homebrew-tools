class Picky < Formula
  desc "Helper tool to keep Claude in line and create great quality code"
  homepage "https://github.com/yepzdk/picky-claude"
  version "0.6.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/picky-claude/releases/download/v0.6.2/picky-darwin-arm64"
      sha256 "c971f8ce4d163cf3f08f40e5e189e6a20f9974610a8cd9a53f4d07f6a8ebcd69"
    end
    on_intel do
      url "https://github.com/yepzdk/picky-claude/releases/download/v0.6.2/picky-darwin-amd64"
      sha256 "1104122e5cd0a45a3dcb9c3147c9421c11cd7ded4465c287976d96fbabb76fd9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/picky-claude/releases/download/v0.6.2/picky-linux-arm64"
      sha256 "4e8d3e4990546cce825bebedb0aad2b6f60841cf9b71cc5493a256d1e58b0d4e"
    end
    on_intel do
      url "https://github.com/yepzdk/picky-claude/releases/download/v0.6.2/picky-linux-amd64"
      sha256 "eed33dc151ef59f7979a8ec336bec18dd9899d3ad3ef19f424c4cbe7a851e6e7"
    end
  end

  def install
    bin.install Dir["*"].first => "picky"
  end

  test do
    assert_match "picky", shell_output("#{bin}/picky --version")
  end
end
