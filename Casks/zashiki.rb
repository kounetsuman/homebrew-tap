cask "zashiki" do
  version "0.22.0"
  sha256 "fc9c01f6ef94800297272a4522c9335b5fa2095bc13feb85b8714c1522781e89"

  url "https://github.com/kounetsuman/zashiki/releases/download/v#{version}/Zashiki_#{version}_aarch64.dmg",
      verified: "github.com/kounetsuman/zashiki/"
  name "Zashiki"
  desc "Desktop cockpit that brings your Claude Code sessions into one window"
  homepage "https://github.com/kounetsuman/zashiki"

  # The app self-updates via an in-app signed-dmg swap, so brew stays out of
  # version management and never reverts the app's own updates.
  auto_updates true
  depends_on arch:  :arm64
  depends_on macos: :big_sur

  app "Zashiki.app"

  uninstall launchctl: "io.github.kounetsuman.zashiki",
            quit:      "io.github.kounetsuman.zashiki"

  zap trash: [
    "~/.zashiki",
    "~/Library/Caches/io.github.kounetsuman.zashiki",
    "~/Library/LaunchAgents/io.github.kounetsuman.zashiki.plist",
    "~/Library/Preferences/io.github.kounetsuman.zashiki.plist",
    "~/Library/Saved Application State/io.github.kounetsuman.zashiki.savedState",
    "~/Library/WebKit/io.github.kounetsuman.zashiki",
  ]
end
