class ItkdevClaudeCode < Formula
  desc "Helper tool to keep Claude in line and create great quality code"
  homepage "https://github.com/yepzdk/itkdev-claude-code"
  version "0.12.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.12.0/itkdev-claude-code-darwin-arm64"
      sha256 "70a2461248c202c2198334891e2290080f20e187c10d6f841808c8dad59dd082"
    end
    on_intel do
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.12.0/itkdev-claude-code-darwin-amd64"
      sha256 "97f3c2579894d0e8d5dfdd2dcbb7bc58deae0050ba29926760b7d958d2d4ddd6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.12.0/itkdev-claude-code-linux-arm64"
      sha256 "c153d3e717607e7e8fa0ad86e1766c4542edac109e0f0d78997c261fc9059578"
    end
    on_intel do
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.12.0/itkdev-claude-code-linux-amd64"
      sha256 "2b79ba0cd62fa07ea4dbbd527b0644d4b72b6599d3be697a4a1622ce8f89eb63"
    end
  end

  def install
    bin.install Dir["*"].first => "itkdev-claude-code"
  end

  test do
    assert_match "itkdev-claude-code", shell_output("#{bin}/itkdev-claude-code --version")
  end
end
