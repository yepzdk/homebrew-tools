class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.3.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.12/csm-darwin-arm64"
      sha256 "466a95ba68e24369f95f92e6880fdf20bf69e8b25a69610ea56951fee7392d62"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.12/csm-darwin-amd64"
      sha256 "e76a088db8c6c7b8e42a4686dcbb6928d200b00b800116df2c7adabf53bb7cf1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.12/csm-linux-arm64"
      sha256 "23673c74247fdcb000be7313841e8c85b390c38dcf3778411d215815d5971c27"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.3.12/csm-linux-amd64"
      sha256 "deea06c09d60f5884f577fed2da952a657f59af8fb020a6d02b91e1c3e2ecffe"
    end
  end

  def install
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
