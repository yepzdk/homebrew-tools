cask "webreader" do
  version "0.16.0"
  sha256 "a6c124efc8d3c4ddfef4eaec86f271abc080942521d999baca7274dedc65943f"

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
