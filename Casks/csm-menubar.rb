cask "csm-menubar" do
  version "0.3.33"

  on_arm do
    sha256 "053f8e7c91ee427a62b9be64ce230b3fa4c9833951152604e5ac720e212def1a"
    url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v#{version}/CSMMenuBar-darwin-arm64.zip"
  end

  on_intel do
    sha256 "f6e58d63fd0766ee10cdf51dd0e9eab62b00123ac760a6a7558b8e4a2d317dfd"
    url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v#{version}/CSMMenuBar-darwin-amd64.zip"
  end

  name "CSM Menu Bar"
  desc "macOS menu bar app for monitoring Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  license "MIT"

  app "CSMMenuBar.app"

  zap trash: "~/Library/Preferences/com.yepzdk.CSMMenuBar.plist"
end
