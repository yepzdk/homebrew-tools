class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.61"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.61/csm-darwin-arm64"
      sha256 "f4aad564fb0350047e4f08a6e5425680eee9ca0ad217654efaaf410a8b15c809"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.61/csm-darwin-amd64"
      sha256 "9f238d66f23e61b330bb6ab3be6961282a05b80619c7d1f2a2d4eec291df1729"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.61/csm-linux-arm64"
      sha256 "2f7d7ae8e53fc41b96142674625ed9e55b9983791f076d56b115377d993f0fe2"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.61/csm-linux-amd64"
      sha256 "940a9e9ecf43fb7f16f9b5977e777e5f9773fc679ed14d37bc181ad3ae6ec99b"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
