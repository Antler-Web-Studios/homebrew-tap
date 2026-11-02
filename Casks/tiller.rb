cask "tiller" do
  version "0.9.1"
  sha256 "ca0946f4d45e49ef4efe5d1cfcf03940a748e9f27926547db85c1b8763fd0928"

  url "https://github.com/Antler-Web-Studios/tiller/releases/download/v#{version}/Tiller-#{version}-arm64.dmg"
  name "Tiller"
  desc "Run coding agents as repeatable visual workflows"
  homepage "https://tiller.shipr.app"

  depends_on arch: :arm64

  app "Tiller.app"
end
