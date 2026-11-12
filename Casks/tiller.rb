cask "tiller" do
  version "1.0.5"
  sha256 "2162bda350501916823b4c9ff20c4d89967d43118929581bc7e56ca43ba0a457"

  url "https://github.com/Antler-Web-Studios/tiller/releases/download/v#{version}/Tiller-#{version}-arm64.dmg"
  name "Tiller"
  desc "Run coding agents as repeatable visual workflows"
  homepage "https://tiller.shipr.app"

  depends_on arch: :arm64

  auto_updates true

  app "Tiller.app"
  zap trash: [
    "~/.tiller",
    "~/Library/Application Support/Tiller",
    "~/Library/Caches/com.antlerwebstudios.tiller",
    "~/Library/Caches/tiller-updater",
    "~/Library/Preferences/com.antlerwebstudios.tiller.plist",
    "~/Library/Saved Application State/com.antlerwebstudios.tiller.savedState",
  ]
end
