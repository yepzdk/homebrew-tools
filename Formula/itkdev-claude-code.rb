class ItkdevClaudeCode < Formula
  desc "Helper tool to keep Claude in line and create great quality code"
  homepage "https://github.com/yepzdk/itkdev-claude-code"
  version "0.9.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.9.0/itkdev-claude-code-darwin-arm64"
      sha256 "0ab8dd91e75965cc826503887b12f6789edd0a091fb54d7c97b337e7734a131f"
    end
    on_intel do
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.9.0/itkdev-claude-code-darwin-amd64"
      sha256 "12419d3111e22f96140af745c8d95d8ef10186566af7b727eb494ffa42d82af5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.9.0/itkdev-claude-code-linux-arm64"
      sha256 "eb77357d2a8a48ff597c97fe6ac99c52f8db2c0b98872b8fa631e45ae1220531"
    end
    on_intel do
      url "https://github.com/yepzdk/itkdev-claude-code/releases/download/v0.9.0/itkdev-claude-code-linux-amd64"
      sha256 "65a876e2a3e4ba894b177b160b8d1dad4e09ce390ecfeda8da40fb7fbca1ed0b"
    end
  end

  def install
    bin.install Dir["*"].first => "itkdev-claude-code"
  end

  test do
    assert_match "itkdev-claude-code", shell_output("#{bin}/itkdev-claude-code --version")
  end
end
