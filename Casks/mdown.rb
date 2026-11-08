cask "mdown" do
  version "1.1.4"
  sha256 "781a923e406471ee23432f8e8b5656fe4b687bad0443dd33f1a617653304de81"

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
