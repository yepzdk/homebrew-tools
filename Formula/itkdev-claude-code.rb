class ItkdevClaudeCode < Formula
  desc "Helper tool to keep Claude in line and create great quality code"
  homepage "https://github.com/yepzdk/itkdev-claude-code"
  version "0.4.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.4.0/itkdev-claude-code-darwin-arm64"
      sha256 "1cc4c9e4f0c2190af3dcbb4dd22a15d9ddd5d4a33c1d9cca35bedd23344f30d7"
    end
    on_intel do
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.4.0/itkdev-claude-code-darwin-amd64"
      sha256 "9d810484d1e5e81676dc865505ef97551c8c3a0369a8e5bbe4ec48c2fae5c604"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.4.0/itkdev-claude-code-linux-arm64"
      sha256 "1f5fff0804d8411b923f880447329ae8eef7b0654c4f010e7b16adc5e2789e98"
    end
    on_intel do
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.4.0/itkdev-claude-code-linux-amd64"
      sha256 "c9f9196b43ad8d7337fff97f88e79b3e0992f93832d4ebb51eb3a6d54465dcf7"
    end
  end

  def install
    bin.install Dir["*"].first => "itkdev-claude-code"
  end

  test do
    assert_match "itkdev-claude-code", shell_output("#{bin}/itkdev-claude-code --version")
  end
end
