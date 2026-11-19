cask "webreader" do
  version "0.17.0"
  sha256 "9337e5c79e3be8375ce547b9955f73698f395086f81336c85fd61f02516dba9e"

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
