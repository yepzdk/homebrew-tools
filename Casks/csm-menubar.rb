cask "csm-menubar" do
  version "0.3.43"

  on_arm do
    sha256 "527bcae62106b526c0c2b9bfc75f19b98f0b6da50c11bcc4ca6061a96d6ffb65"
    url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v#{version}/CSMMenuBar-darwin-arm64.zip"
  end

  on_intel do
    sha256 "75bb38f6f0a1080cca823f323ee72b5ad5eb667b2afa5ae9bc9a541078281560"
    url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v#{version}/CSMMenuBar-darwin-amd64.zip"
  end

  name "CSM Menu Bar"
  desc "macOS menu bar app for monitoring Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  license "MIT"

  app "CSMMenuBar.app"

  zap trash: "~/Library/Preferences/com.yepzdk.CSMMenuBar.plist"
end
