cask "mdown" do
  version "1.1"
  sha256 "005985670a67f59bd6551d379e1dd308cbeb871a3b58c271481ce7944360ce25"

  url "https://github.com/sandeepgangarapu/mdown/releases/download/v#{version}/MDown.dmg",
      verified: "github.com/sandeepgangarapu/mdown/"
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
