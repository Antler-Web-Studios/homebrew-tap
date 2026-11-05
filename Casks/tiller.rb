cask "tiller" do
  version "1.0.2"
  sha256 "7cbd0e726d7e93c0f6fb9989e0d8e5f0648d1de84796046999e81e73b9e41806"

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
