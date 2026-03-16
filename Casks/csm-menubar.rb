cask "csm-menubar" do
  version "0.0.0"

  on_arm do
    sha256 "TODO"
    url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v#{version}/CSMMenuBar-darwin-arm64.zip"
  end

  on_intel do
    sha256 "TODO"
    url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v#{version}/CSMMenuBar-darwin-amd64.zip"
  end

  name "CSM Menu Bar"
  desc "macOS menu bar app for monitoring Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  license "MIT"

  app "CSMMenuBar.app"

  zap trash: "~/Library/Preferences/com.yepzdk.CSMMenuBar.plist"
end
