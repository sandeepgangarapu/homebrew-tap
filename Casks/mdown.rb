cask "mdown" do
  version "1.1.2"
  sha256 "b8e1bcfbf625fe4fef51d31fbad1c2f2e74fca55de8c655db5c11e95ddd0291b"

  url "https://github.com/sandeepgangarapu/mdown/releases/download/v#{version}/MDown.dmg"
  name "MDown"
  desc "Simple native Markdown editor"
  homepage "https://mdown.sandeepgangarapu.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :tahoe

  app "MDown.app"

  zap trash: [
    "~/Library/Application Support/MDown",
    "~/Library/Caches/app.mdown.macos",
    "~/Library/HTTPStorages/app.mdown.macos",
    "~/Library/Preferences/app.mdown.macos.plist",
    "~/Library/Saved Application State/app.mdown.macos.savedState",
  ]
end
