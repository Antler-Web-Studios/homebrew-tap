cask "tiller" do
  version "1.0.6"
  sha256 "5b229e0d8dbdae7175d55abae448cf24252607d9c2ae988b13899629cc6f7f9e"

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
