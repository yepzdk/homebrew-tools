class ItkdevClaudeCode < Formula
  desc "Helper tool to keep Claude in line and create great quality code"
  homepage "https://github.com/yepzdk/itkdev-claude-code"
  version "0.6.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.6.0/itkdev-claude-code-darwin-arm64"
      sha256 "42346743b1f5e5215caeddda205a9942da8302ffaf535066a0d322835f02b782"
    end
    on_intel do
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.6.0/itkdev-claude-code-darwin-amd64"
      sha256 "396e5f0a104b9940c0f2a7fa1be75ab033d75b69f04f3eaf142aaa4ffff45e5f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.6.0/itkdev-claude-code-linux-arm64"
      sha256 "1a83d1bc9bb7b525765ba78ca80928d20ee05b65b33bbfbc37cca1dc99587faf"
    end
    on_intel do
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.6.0/itkdev-claude-code-linux-amd64"
      sha256 "830b915d3ee56a35e3ac7214df47c9a1559467e17d0a4add493912b89daa4f96"
    end
  end

  def install
    bin.install Dir["*"].first => "itkdev-claude-code"
  end

  test do
    assert_match "itkdev-claude-code", shell_output("#{bin}/itkdev-claude-code --version")
  end
end
