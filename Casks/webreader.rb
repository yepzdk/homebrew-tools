cask "webreader" do
  version "0.17.1"
  sha256 "22409522e8713a9e253872a19ac5090d035d2e6b0dc888603d43cc94bc2c0788"

  url "https://webreader.yepz.dk/download/WebReader-#{version}.zip"
  name "WebReader"
  desc "Distraction-free reading app: send it a link, read the article"
  homepage "https://webreader.yepz.dk/"

  depends_on macos: :ventura

  app "WebReader.app"

  zap trash: [
    "~/Library/HTTPStorages/dk.yepz.webreader",
    "~/Library/Preferences/dk.yepz.webreader.plist",
    "~/Library/Saved Application State/dk.yepz.webreader.savedState",
    "~/Library/WebKit/dk.yepz.webreader",
  ]
end
