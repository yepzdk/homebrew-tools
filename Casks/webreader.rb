cask "webreader" do
  version "0.14.1"
  sha256 "2375eb55ea3459fba2297a29620f3a6d9f2f9aea1158d3b646d6e28fe2719712"

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
