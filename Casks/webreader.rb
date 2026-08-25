cask "webreader" do
  version "0.9.0"
  sha256 "41ccfb4aabb85b54ed81368ce39b0a484699348aa3dcdaabe658e21d2c917ba6"

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
