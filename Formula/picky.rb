class Picky < Formula
  desc "Helper tool to keep Claude in line and create great quality code"
  homepage "https://github.com/yepzdk/picky-claude"
  version "0.6.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/picky-claude/releases/download/v0.6.0/picky-darwin-arm64"
      sha256 "c65997bfea11198782ac431c8de1a0698cf500eb408afeb75f897d6bb3b17968"
    end
    on_intel do
      url "https://github.com/yepzdk/picky-claude/releases/download/v0.6.0/picky-darwin-amd64"
      sha256 "f345fff10a717b0c016c648b366ecbb15ff0cb582b219cc5fd65587540b853c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/picky-claude/releases/download/v0.6.0/picky-linux-arm64"
      sha256 "c62f686ff5d5d19b48425581e621046b80af1aea8a33e8a131871e9ac2aa84f6"
    end
    on_intel do
      url "https://github.com/yepzdk/picky-claude/releases/download/v0.6.0/picky-linux-amd64"
      sha256 "53728d71d0e61eea70488c54732b9c0de67f8f26dd028ba1c098a186e28ee969"
    end
  end

  def install
    bin.install Dir["*"].first => "picky"
  end

  test do
    assert_match "picky", shell_output("#{bin}/picky --version")
  end
end
