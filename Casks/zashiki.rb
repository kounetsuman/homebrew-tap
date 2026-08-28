cask "zashiki" do
  version "0.15.0"
  sha256 "b4ba8ea0ed5b9f6ea9fb4d6b823621bd9647e0ca5ba90dc862b9784cb1e82644"

  url "https://github.com/kounetsuman/zashiki/releases/download/v#{version}/Zashiki_#{version}_aarch64.dmg",
      verified: "github.com/kounetsuman/zashiki/"
  name "Zashiki"
  desc "Desktop cockpit that brings your Claude Code sessions into one window"
  homepage "https://github.com/kounetsuman/zashiki"

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
