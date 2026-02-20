class ItkdevClaudeCode < Formula
  desc "Helper tool to keep Claude in line and create great quality code"
  homepage "https://github.com/yepzdk/itkdev-claude-code"
  version "0.11.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.11.0/itkdev-claude-code-darwin-arm64"
      sha256 "8c025122262d3f3a08a78dfd6d23ec67b4f4dc5c28c8c6f6a234e742e1bd5ce6"
    end
    on_intel do
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.11.0/itkdev-claude-code-darwin-amd64"
      sha256 "9e6215a46b3cefba455874bb0cb6cae9737c0306c38aa70fe79ce6ca877a69cb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.11.0/itkdev-claude-code-linux-arm64"
      sha256 "4435a89ad20a5b23b3e9358135a7b04ac31e0cb62e42cb9917142ca63702a662"
    end
    on_intel do
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.11.0/itkdev-claude-code-linux-amd64"
      sha256 "45720aca5baaa17c27e3a0b691c5becb6db3113961519f67d86462195495cc8d"
    end
  end

  def install
    bin.install Dir["*"].first => "itkdev-claude-code"
  end

  test do
    assert_match "itkdev-claude-code", shell_output("#{bin}/itkdev-claude-code --version")
  end
end
