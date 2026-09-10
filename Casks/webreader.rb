cask "webreader" do
  version "0.13.0"
  sha256 "4536b6d95e5404d424386fb00ca6ed1423b8c5f423ad9f33be9d5ea689ebce34"

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
