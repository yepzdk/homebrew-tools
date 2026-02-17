class Picky < Formula
  desc "Helper tool to keep Claude in line and create great quality code"
  homepage "https://github.com/yepzdk/picky-claude"
  version "0.2.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/picky-claude/releases/download/v0.2.0/picky-darwin-arm64"
      sha256 "fbd45d61cbf2f2ce93980877e654898721a3e6bdb73e899bc44cb48c933cce33"
    end
    on_intel do
      url "https://github.com/yepzdk/picky-claude/releases/download/v0.2.0/picky-darwin-amd64"
      sha256 "536b2bb94a556d45aa3ff40ebdbea15a754d0d1f5e5d58321a1fce2d28c59c93"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/picky-claude/releases/download/v0.2.0/picky-linux-arm64"
      sha256 "430169df51db85ecf1fddb184b4c796ce671ff50a7c2f962693ec7bf61d1f11d"
    end
    on_intel do
      url "https://github.com/yepzdk/picky-claude/releases/download/v0.2.0/picky-linux-amd64"
      sha256 "0a2889e828e8d95ad686aa9488bb0cfd7b9fbda2b369477a9a4ea209ea2d2ea3"
    end
  end

  def install
    bin.install Dir["*"].first => "picky"
  end

  test do
    assert_match "picky", shell_output("#{bin}/picky --version")
  end
end
