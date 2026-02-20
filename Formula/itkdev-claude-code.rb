class ItkdevClaudeCode < Formula
  desc "Helper tool to keep Claude in line and create great quality code"
  homepage "https://github.com/yepzdk/itkdev-claude-code"
  version "0.12.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.12.1/itkdev-claude-code-darwin-arm64"
      sha256 "8bc949deb276360349742b662e0a193187bf4eb533831d9971c66e729648c0c0"
    end
    on_intel do
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.12.1/itkdev-claude-code-darwin-amd64"
      sha256 "79542b7d93ea64e843623e4f796a783813ba54cffdc0cb76bf86b1b62b1f3a46"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.12.1/itkdev-claude-code-linux-arm64"
      sha256 "fd325d6f243d39698c7d95948f9b80f4d6a9ae7a3dcca8ad24e3af31e04b5d51"
    end
    on_intel do
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.12.1/itkdev-claude-code-linux-amd64"
      sha256 "3b0a513fb0f623e91cf1ccf75038cded40a1e515475d8cc65d559a6aa9d13817"
    end
  end

  def install
    bin.install Dir["*"].first => "itkdev-claude-code"
  end

  test do
    assert_match "itkdev-claude-code", shell_output("#{bin}/itkdev-claude-code --version")
  end
end
