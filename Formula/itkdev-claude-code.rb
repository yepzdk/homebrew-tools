class ItkdevClaudeCode < Formula
  desc "Helper tool to keep Claude in line and create great quality code"
  homepage "https://github.com/yepzdk/itkdev-claude-code"
  version "0.0.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.0.0/itkdev-claude-code-darwin-arm64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.0.0/itkdev-claude-code-darwin-amd64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.0.0/itkdev-claude-code-linux-arm64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.0.0/itkdev-claude-code-linux-amd64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "itkdev-claude-code-darwin-arm64" => "itkdev-claude-code"
      else
        bin.install "itkdev-claude-code-darwin-amd64" => "itkdev-claude-code"
      end
    elsif OS.linux?
      if Hardware::CPU.arm?
        bin.install "itkdev-claude-code-linux-arm64" => "itkdev-claude-code"
      else
        bin.install "itkdev-claude-code-linux-amd64" => "itkdev-claude-code"
      end
    end
  end

  test do
    system "#{bin}/itkdev-claude-code", "--version"
  end
end
