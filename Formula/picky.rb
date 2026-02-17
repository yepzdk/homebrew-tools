class Picky < Formula
  desc "Helper tool to keep Claude in line and create great quality code"
  homepage "https://github.com/yepzdk/picky-claude"
  version "0.5.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/picky-claude/releases/download/v0.5.2/picky-darwin-arm64"
      sha256 "df77fe305eb427ebf745f2cf7f9a4e4be65bd3000a0bf01dda3233ad4c870dce"
    end
    on_intel do
      url "https://github.com/yepzdk/picky-claude/releases/download/v0.5.2/picky-darwin-amd64"
      sha256 "3f344982c9c20dc6608e5583f7b965ad349936977a1977ef9bb795a6b2022893"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/picky-claude/releases/download/v0.5.2/picky-linux-arm64"
      sha256 "b8a649eb1b25b532c626658b9457938467954cdb573a83469d94322531afed91"
    end
    on_intel do
      url "https://github.com/yepzdk/picky-claude/releases/download/v0.5.2/picky-linux-amd64"
      sha256 "4424c0403fa899c06d17aaf3c487b92942a6697a38f2a4e7bd09b23cf91f4387"
    end
  end

  def install
    bin.install Dir["*"].first => "picky"
  end

  test do
    assert_match "picky", shell_output("#{bin}/picky --version")
  end
end
