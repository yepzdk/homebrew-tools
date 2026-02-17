class Picky < Formula
  desc "Helper tool to keep Claude in line and create great quality code"
  homepage "https://github.com/yepzdk/picky-claude"
  version "0.5.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/picky-claude/releases/download/v0.5.1/picky-darwin-arm64"
      sha256 "f983aa2ce53337fdac4297008ed30883736b26af14773bb4e682c90764f5d8f3"
    end
    on_intel do
      url "https://github.com/yepzdk/picky-claude/releases/download/v0.5.1/picky-darwin-amd64"
      sha256 "4ac0df99f5e45a7b005adc114efd520b2e1c0fae15cb0a3011921abdf993faab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/picky-claude/releases/download/v0.5.1/picky-linux-arm64"
      sha256 "79ba91844923741a09202543deb8b9832fec4dbbc9c26f6b42ee37687095091a"
    end
    on_intel do
      url "https://github.com/yepzdk/picky-claude/releases/download/v0.5.1/picky-linux-amd64"
      sha256 "057a4ba8b48f69c025ce19067d2d9642f91be4887e992139c5d984cf82b361ff"
    end
  end

  def install
    bin.install Dir["*"].first => "picky"
  end

  test do
    assert_match "picky", shell_output("#{bin}/picky --version")
  end
end
