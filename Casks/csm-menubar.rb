cask "csm-menubar" do
  version "0.3.44"

  on_arm do
    sha256 "c59864c28cfda4a6519773213deb15bcc182957d90c280fd88a99f3427311b49"
    url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v#{version}/CSMMenuBar-darwin-arm64.zip"
  end

  on_intel do
    sha256 "ff0cc996b97b1b999d447c59c3ac86eeeb0961b3ba7daa961348e0d1c7036211"
    url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v#{version}/CSMMenuBar-darwin-amd64.zip"
  end

  name "CSM Menu Bar"
  desc "macOS menu bar app for monitoring Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  license "MIT"

  app "CSMMenuBar.app"

  zap trash: "~/Library/Preferences/com.yepzdk.CSMMenuBar.plist"
end
