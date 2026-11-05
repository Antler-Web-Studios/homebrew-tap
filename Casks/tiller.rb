cask "tiller" do
  version "1.0.3"
  sha256 "3bde53aaf6c386a5b0c37c3285785a038f4e35f96075f779fc69ca2301d07e6d"

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
