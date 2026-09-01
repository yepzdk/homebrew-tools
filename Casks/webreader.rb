cask "webreader" do
  version "0.11.0"
  sha256 "826cd9d374b1bb82da9d751d6bae92c2b63266e534e876e788791e03fd3fcb4c"

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
