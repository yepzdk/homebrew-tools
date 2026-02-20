class ItkdevClaudeCode < Formula
  desc "Helper tool to keep Claude in line and create great quality code"
  homepage "https://github.com/yepzdk/itkdev-claude-code"
  version "0.8.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.8.0/itkdev-claude-code-darwin-arm64"
      sha256 "2d00abee29202e61053160dd8bbcebb4d7421dedfb5fbf9fdb4f7c45e70147e6"
    end
    on_intel do
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.8.0/itkdev-claude-code-darwin-amd64"
      sha256 "8854421790c482033dbe7c5345ccd9c68a8b7acbb25760e10456f19e282233b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.8.0/itkdev-claude-code-linux-arm64"
      sha256 "7568e4e009222e79551b3f57c3bcae54fbf06b92bdc06859a4a70f14b8ceb7b8"
    end
    on_intel do
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.8.0/itkdev-claude-code-linux-amd64"
      sha256 "17dde974cee8d81b63801aeb8d17e2e0833addac8dbd2f9b5551960f07f859eb"
    end
  end

  def install
    bin.install Dir["*"].first => "itkdev-claude-code"
  end

  test do
    assert_match "itkdev-claude-code", shell_output("#{bin}/itkdev-claude-code --version")
  end
end
