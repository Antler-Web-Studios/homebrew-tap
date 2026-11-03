cask "tiller" do
  version "1.0.1"
  sha256 "0e5b0213464d3da3731efe7aa802cb741e4717b461e9543edf9a784b290a3a68"

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
