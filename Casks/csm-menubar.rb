cask "csm-menubar" do
  version "0.3.31"

  on_arm do
    sha256 "d556c8d74ca657cf407a378efdef29c4f1d172b78c24290de3707b1e9bd7193e"
    url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v#{version}/CSMMenuBar-darwin-arm64.zip"
  end

  on_intel do
    sha256 "57b9fb956e2751bc4ab65212212539dcf230216d8b1570e7db02a2ac03aa95c1"
    url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v#{version}/CSMMenuBar-darwin-amd64.zip"
  end

  name "CSM Menu Bar"
  desc "macOS menu bar app for monitoring Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  license "MIT"

  app "CSMMenuBar.app"

  zap trash: "~/Library/Preferences/com.yepzdk.CSMMenuBar.plist"
end
