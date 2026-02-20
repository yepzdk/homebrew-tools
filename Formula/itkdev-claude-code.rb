class ItkdevClaudeCode < Formula
  desc "Helper tool to keep Claude in line and create great quality code"
  homepage "https://github.com/yepzdk/itkdev-claude-code"
  version "0.10.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.10.0/itkdev-claude-code-darwin-arm64"
      sha256 "7267ab894cd717b2ee8a007ca484a0cc1a3505d376ecf3b9ede349b4bd80be43"
    end
    on_intel do
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.10.0/itkdev-claude-code-darwin-amd64"
      sha256 "cd14e821a46e7da8b9a836048a6678a674e1a1f1663488e18e19ea5cd957c7b0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.10.0/itkdev-claude-code-linux-arm64"
      sha256 "fc4c9666de49662c2aebb4a477e04050864912be6a1ccf434314f45f9206de60"
    end
    on_intel do
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.10.0/itkdev-claude-code-linux-amd64"
      sha256 "093a77e24852bef783411115383dc48bb60ba9acddf0e9d6baa4e1b75e15c880"
    end
  end

  def install
    bin.install Dir["*"].first => "itkdev-claude-code"
  end

  test do
    assert_match "itkdev-claude-code", shell_output("#{bin}/itkdev-claude-code --version")
  end
end
