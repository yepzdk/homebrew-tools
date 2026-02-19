class Picky < Formula
  desc "Helper tool to keep Claude in line and create great quality code"
  homepage "https://github.com/yepzdk/picky-claude"
  version "0.6.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/picky-claude/releases/download/v0.6.3/picky-darwin-arm64"
      sha256 "021dccf5aa2989dbc3807352a0a965dcc186d9b02f6cdb605cb56055f0229a6d"
    end
    on_intel do
      url "https://github.com/yepzdk/picky-claude/releases/download/v0.6.3/picky-darwin-amd64"
      sha256 "ad4984c5a20ffbaebe6ab6c576cc4fed4ee7056a2b65eed285dd6898abe00302"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/picky-claude/releases/download/v0.6.3/picky-linux-arm64"
      sha256 "c30eef7c06f2f4c5052995457b8c1306aa56242dd025c0066481a1e713dacab8"
    end
    on_intel do
      url "https://github.com/yepzdk/picky-claude/releases/download/v0.6.3/picky-linux-amd64"
      sha256 "8b06cc53cdf962ba24f6a936316e372c35a7d3cd680bc124a7b38462008abcc5"
    end
  end

  def install
    bin.install Dir["*"].first => "picky"
  end

  test do
    assert_match "picky", shell_output("#{bin}/picky --version")
  end
end
