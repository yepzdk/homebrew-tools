cask "csm-menubar" do
  version "0.3.41"

  on_arm do
    sha256 "718bd06231e7e12d35ec6f6e4ebee36f230fad74cd7aca1a82a0e35f37b53042"
    url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v#{version}/CSMMenuBar-darwin-arm64.zip"
  end

  on_intel do
    sha256 "4b325d2b2ddd826f7c2b05d8517a29ba08c2c9fab9552b5175fa3a3980bfeb7b"
    url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v#{version}/CSMMenuBar-darwin-amd64.zip"
  end

  name "CSM Menu Bar"
  desc "macOS menu bar app for monitoring Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  license "MIT"

  app "CSMMenuBar.app"

  zap trash: "~/Library/Preferences/com.yepzdk.CSMMenuBar.plist"
end
