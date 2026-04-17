cask "csm-menubar" do
  version "0.3.39"

  on_arm do
    sha256 "c63e667fdb2f98f4e91e320bcaf8691b67d7c7ac7201db02e77c5b32bbca9cd6"
    url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v#{version}/CSMMenuBar-darwin-arm64.zip"
  end

  on_intel do
    sha256 "2716ce01b07b5a7f8e98a2923b67a97d58d50b3d1f546dc5d25b30f4c640c5c3"
    url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v#{version}/CSMMenuBar-darwin-amd64.zip"
  end

  name "CSM Menu Bar"
  desc "macOS menu bar app for monitoring Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  license "MIT"

  app "CSMMenuBar.app"

  zap trash: "~/Library/Preferences/com.yepzdk.CSMMenuBar.plist"
end
