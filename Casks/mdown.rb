cask "mdown" do
  version "1.1.1"
  sha256 "8e22f045938ad523481ac34d0415ddf19aa1b6189d5f4d3237b862d14c5bf110"

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
