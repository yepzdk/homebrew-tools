cask "csm-menubar" do
  version "0.3.36"

  on_arm do
    sha256 "1ee6cbd6ad25e838744bb2f4c0679dcd01457d1029942b32c3667f55947527d5"
    url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v#{version}/CSMMenuBar-darwin-arm64.zip"
  end

  on_intel do
    sha256 "d65b41a90e593c8d680fe6e31c37673653774ccf24ffd68e23558f2ed4e66419"
    url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v#{version}/CSMMenuBar-darwin-amd64.zip"
  end

  name "CSM Menu Bar"
  desc "macOS menu bar app for monitoring Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  license "MIT"

  app "CSMMenuBar.app"

  zap trash: "~/Library/Preferences/com.yepzdk.CSMMenuBar.plist"
end
