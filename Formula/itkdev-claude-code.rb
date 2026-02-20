class ItkdevClaudeCode < Formula
  desc "Helper tool to keep Claude in line and create great quality code"
  homepage "https://github.com/yepzdk/itkdev-claude-code"
  version "0.7.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.7.0/itkdev-claude-code-darwin-arm64"
      sha256 "0e2f88596b8efd6c8a192bfd77089cfba07c7312c05547e265d666915d761a39"
    end
    on_intel do
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.7.0/itkdev-claude-code-darwin-amd64"
      sha256 "53facf0fee07d0244f55541a562a5816bb565195bcecfc47dca5ec303ec15c2b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.7.0/itkdev-claude-code-linux-arm64"
      sha256 "d9687341fb89312b77c8a2ac9537d7d26572ad0d073ffec1b2780ca76b61236c"
    end
    on_intel do
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.7.0/itkdev-claude-code-linux-amd64"
      sha256 "0e35c347eae1938f95f9f40ee3191ed3b7c08920e019c7411f707ce95e914545"
    end
  end

  def install
    bin.install Dir["*"].first => "itkdev-claude-code"
  end

  test do
    assert_match "itkdev-claude-code", shell_output("#{bin}/itkdev-claude-code --version")
  end
end
