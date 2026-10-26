cask "iphone-data-manager" do
  version "0.1.2"
  sha256 "6191b4062de2d9b9549dda7e5bfc8a71e26ed83a64e48115686b13eec6dfbc72"

  url "https://iphonedatamanager.com/downloads/iPhone-Data-Manager.dmg"
  name "iPhone Data Manager"
  desc "Local-first iPhone backup manager and WhatsApp, photo, message, and diagnostics exporter"
  homepage "https://iphonedatamanager.com/"

  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "iPhone Data Manager.app"

  zap trash: [
    "~/Library/Application Support/com.iphonedatamanager.app",
    "~/Library/Caches/com.iphonedatamanager.app",
    "~/Library/Preferences/com.iphonedatamanager.app.plist",
    "~/Library/Saved Application State/com.iphonedatamanager.app.savedState",
  ]
end
