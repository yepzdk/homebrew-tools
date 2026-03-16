cask "csm-menubar" do
  version "0.3.32"

  on_arm do
    sha256 "a869cfe1e06a88769dc29660dd3e72562f3dd4b45816b7877974fe6026948ec4"
    url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v#{version}/CSMMenuBar-darwin-arm64.zip"
  end

  on_intel do
    sha256 "bd9cd8a37c606b3a9a1aabcf7efbcf726acb15bb92c0f8600555c88b821c5b64"
    url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v#{version}/CSMMenuBar-darwin-amd64.zip"
  end

  name "CSM Menu Bar"
  desc "macOS menu bar app for monitoring Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  license "MIT"

  app "CSMMenuBar.app"

  zap trash: "~/Library/Preferences/com.yepzdk.CSMMenuBar.plist"
end
