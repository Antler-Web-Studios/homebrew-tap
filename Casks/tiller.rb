cask "tiller" do
  version "0.9.0"
  sha256 "b227a60d5f6df6d2d2bd1831436d792a9f30daab02fc39aa3524cb0d32d9d0a4"

  url "https://github.com/Antler-Web-Studios/tiller/releases/download/v#{version}/Tiller-#{version}-arm64.dmg"
  name "Tiller"
  desc "Run coding agents as repeatable visual workflows"
  homepage "https://tiller.shipr.app"

  depends_on arch: :arm64

  app "Tiller.app"
end
