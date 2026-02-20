class ItkdevClaudeCode < Formula
  desc "Helper tool to keep Claude in line and create great quality code"
  homepage "https://github.com/yepzdk/itkdev-claude-code"
  version "0.3.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.3.0/itkdev-claude-code-darwin-arm64"
      sha256 "9923693567118e5e71b2c381b646aa891e5d0405cadab24c8e75cb2d4891f948"
    end
    on_intel do
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.3.0/itkdev-claude-code-darwin-amd64"
      sha256 "819691168dea1ee2ea05bff5c004a348db3106f323acf4bb60a8de85c7202d9a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.3.0/itkdev-claude-code-linux-arm64"
      sha256 "601e08aa46546114c22ef089d6c3605c815f1d85e6c20f8f2cb831243020a876"
    end
    on_intel do
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.3.0/itkdev-claude-code-linux-amd64"
      sha256 "7d6947bac3a3b5109f0ea211325a35ef189e3b0de2af8cda8a5f310c17e57c74"
    end
  end

  def install
    bin.install Dir["*"].first => "itkdev-claude-code"
  end

  test do
    assert_match "itkdev-claude-code", shell_output("#{bin}/itkdev-claude-code --version")
  end
end
