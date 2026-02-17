class Picky < Formula
  desc "Helper tool to keep Claude in line and create great quality code"
  homepage "https://github.com/yepzdk/picky-claude"
  version "0.6.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/picky-claude/releases/download/v0.6.1/picky-darwin-arm64"
      sha256 "51133610d53c2fc7d118ab4e93213c958b94444d3d2445e9c1978f2fda401ae3"
    end
    on_intel do
      url "https://github.com/yepzdk/picky-claude/releases/download/v0.6.1/picky-darwin-amd64"
      sha256 "c9fc75c6b8ba9ee7b364778cfcdb0352ad441e97b4c75d6f5eec463c5ac4b7d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/picky-claude/releases/download/v0.6.1/picky-linux-arm64"
      sha256 "63d2f426038a5c47a41ed4066e16c96f65e54630612e440b756e6a17ea5f15a2"
    end
    on_intel do
      url "https://github.com/yepzdk/picky-claude/releases/download/v0.6.1/picky-linux-amd64"
      sha256 "6326c918bb09e23144eb6601784a4719984c9073e013e13b286de7e748c0fc5f"
    end
  end

  def install
    bin.install Dir["*"].first => "picky"
  end

  test do
    assert_match "picky", shell_output("#{bin}/picky --version")
  end
end
