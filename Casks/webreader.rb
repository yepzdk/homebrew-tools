cask "webreader" do
  version "0.18.0"
  sha256 "05e81b3e0120e1915fb36f46d08289fb3917b9df2c4f437af40d0d5ac732a735"

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
