cask "csm-menubar" do
  version "0.3.34"

  on_arm do
    sha256 "492e80f3e51a65d99fc30cc207e383a04de2c004e9d4a6863478ae791ed9edf4"
    url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v#{version}/CSMMenuBar-darwin-arm64.zip"
  end

  on_intel do
    sha256 "1bea1b15ed7c4f1d28358391b6d1114f4b7907abcd425f425e2a117b49f286f0"
    url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v#{version}/CSMMenuBar-darwin-amd64.zip"
  end

  name "CSM Menu Bar"
  desc "macOS menu bar app for monitoring Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  license "MIT"

  app "CSMMenuBar.app"

  zap trash: "~/Library/Preferences/com.yepzdk.CSMMenuBar.plist"
end
