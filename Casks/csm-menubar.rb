cask "csm-menubar" do
  version "0.3.35"

  on_arm do
    sha256 "2152586495bf33cf94bd0c17b40be5d5ff824977a3095b751777e726cc011c79"
    url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v#{version}/CSMMenuBar-darwin-arm64.zip"
  end

  on_intel do
    sha256 "8f87a729fc481b0ac06bb67c3221ceb50e058a0d4c5e154c8e2dfd31b16b3988"
    url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v#{version}/CSMMenuBar-darwin-amd64.zip"
  end

  name "CSM Menu Bar"
  desc "macOS menu bar app for monitoring Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  license "MIT"

  app "CSMMenuBar.app"

  zap trash: "~/Library/Preferences/com.yepzdk.CSMMenuBar.plist"
end
