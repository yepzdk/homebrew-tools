class ItkdevClaudeCode < Formula
  desc "Helper tool to keep Claude in line and create great quality code"
  homepage "https://github.com/yepzdk/itkdev-claude-code"
  version "0.5.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.5.0/itkdev-claude-code-darwin-arm64"
      sha256 "f62f2adff022eb4ce3c6b0e8427a3963382e21f826c5eab02077e293d431b578"
    end
    on_intel do
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.5.0/itkdev-claude-code-darwin-amd64"
      sha256 "7d274a4442536b04156ec827b4e5a18a8425535a0ec767afe9db57969c5f6999"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.5.0/itkdev-claude-code-linux-arm64"
      sha256 "e10e80dfc1334ab0886f2b87ce7816e46c18fcdfd9831cef10b6c462eb098e8e"
    end
    on_intel do
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.5.0/itkdev-claude-code-linux-amd64"
      sha256 "4c26c419cae176750565fafbb5708f48ff9f9f240ddd2c3509f33a19f318a086"
    end
  end

  def install
    bin.install Dir["*"].first => "itkdev-claude-code"
  end

  test do
    assert_match "itkdev-claude-code", shell_output("#{bin}/itkdev-claude-code --version")
  end
end
