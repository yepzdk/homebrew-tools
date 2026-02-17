class Picky < Formula
  desc "Helper tool to keep Claude in line and create great quality code"
  homepage "https://github.com/yepzdk/picky-claude"
  version "0.5.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/picky-claude/releases/download/v0.5.3/picky-darwin-arm64"
      sha256 "63b8421634558139d5ec6e7324830eb8f79efe1499cb778609ca09310567c75b"
    end
    on_intel do
      url "https://github.com/yepzdk/picky-claude/releases/download/v0.5.3/picky-darwin-amd64"
      sha256 "5c224337e8bb7ba1ac8c4442b8caab6ad5381317042111d82902e7fc0de7f93c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/picky-claude/releases/download/v0.5.3/picky-linux-arm64"
      sha256 "fada0d9bbcff68d8239cab5d3f47beaa5026fe14c13b2207cb402e4c1e70017a"
    end
    on_intel do
      url "https://github.com/yepzdk/picky-claude/releases/download/v0.5.3/picky-linux-amd64"
      sha256 "b258625fceb7912e7741e7a9dbed38c6da10f922924cbcf4f11c2906c3b795da"
    end
  end

  def install
    bin.install Dir["*"].first => "picky"
  end

  test do
    assert_match "picky", shell_output("#{bin}/picky --version")
  end
end
