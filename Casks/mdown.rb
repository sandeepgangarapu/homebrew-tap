cask "mdown" do
  version "1.1.3"
  sha256 "4bb4be1a4312a75531714dbc5c2354979472f0869224d696bff1f98f0f35fcb5"

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
