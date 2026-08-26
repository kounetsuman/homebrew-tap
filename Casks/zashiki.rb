cask "zashiki" do
  version "0.14.0"
  sha256 "0951333c86bff9fbc8333ee299f35aec3d8d361a4823941fe05433499c4f7de1"

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
