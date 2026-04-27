cask "csm-menubar" do
  version "0.3.42"

  on_arm do
    sha256 "a3cebbdef61cf93fb6b237e2836c05cba61cac76301c44893a8d6d34f871c8fb"
    url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v#{version}/CSMMenuBar-darwin-arm64.zip"
  end

  on_intel do
    sha256 "9da241028df6ceaab75c728cd0d6e0a6fc5b9d47378dbdccedcaacb227e19afa"
    url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v#{version}/CSMMenuBar-darwin-amd64.zip"
  end

  name "CSM Menu Bar"
  desc "macOS menu bar app for monitoring Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  license "MIT"

  app "CSMMenuBar.app"

  zap trash: "~/Library/Preferences/com.yepzdk.CSMMenuBar.plist"
end
