class ItkdevClaudeCode < Formula
  desc "Helper tool to keep Claude in line and create great quality code"
  homepage "https://github.com/yepzdk/itkdev-claude-code"
  version "0.7.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.7.1/itkdev-claude-code-darwin-arm64"
      sha256 "4f8fcc5b791f3cb617967c7f2c5153a49a90d2690fc48cca3a229788154fec10"
    end
    on_intel do
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.7.1/itkdev-claude-code-darwin-amd64"
      sha256 "cb1e9069178e045f44949d864279b1f6b6a61a541332e48eecc5cbbe02d64608"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.7.1/itkdev-claude-code-linux-arm64"
      sha256 "59ca296178defcab30255247c4bef724c4dfad3736348a962f9589584a8c795c"
    end
    on_intel do
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.7.1/itkdev-claude-code-linux-amd64"
      sha256 "3b035f85395cf22cb30fc6bb7170fa28466045d9d72fde69def4b3e826eea258"
    end
  end

  def install
    bin.install Dir["*"].first => "itkdev-claude-code"
  end

  test do
    assert_match "itkdev-claude-code", shell_output("#{bin}/itkdev-claude-code --version")
  end
end
