cask "csm-menubar" do
  version "0.3.40"

  on_arm do
    sha256 "d5170ae3fa03cbeea3714c021ac5d7a1f6109c02fd6a9deb6221a51c4d40fb09"
    url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v#{version}/CSMMenuBar-darwin-arm64.zip"
  end

  on_intel do
    sha256 "6c75aad9f9dd1c48b9d5efab688077ab148ae92c68dcf7b70af4a987ea3f77fa"
    url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v#{version}/CSMMenuBar-darwin-amd64.zip"
  end

  name "CSM Menu Bar"
  desc "macOS menu bar app for monitoring Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  license "MIT"

  app "CSMMenuBar.app"

  zap trash: "~/Library/Preferences/com.yepzdk.CSMMenuBar.plist"
end
