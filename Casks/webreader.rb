cask "webreader" do
  version "0.14.0"
  sha256 "0c588c0ced39c954f4d7d48a7752ebfb93c909867f81f7a284506e4d32c4ddc4"

  url "https://github.com/yepzdk/webreader/releases/download/v#{version}/WebReader-#{version}.zip"
  name "WebReader"
  desc "Distraction-free reading app: send it a link, read the article"
  homepage "https://github.com/yepzdk/webreader"

  depends_on macos: :ventura

  app "WebReader.app"

  zap trash: [
    "~/Library/HTTPStorages/dk.yepz.webreader",
    "~/Library/Preferences/dk.yepz.webreader.plist",
    "~/Library/Saved Application State/dk.yepz.webreader.savedState",
    "~/Library/WebKit/dk.yepz.webreader",
  ]
end
