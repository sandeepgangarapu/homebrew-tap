cask "mdown" do
  version "1.2"
  sha256 "5ade96ca718b5b33261f775d4d453d496675cc075367bcb3ca5772aa32fba895"

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
