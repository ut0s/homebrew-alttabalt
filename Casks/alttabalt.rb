cask "alttabalt" do
  version "1.0.1"
  sha256 "3065ddb2c8494a5936b792569fa542ebb98607a3d95bbf5aa4f2b30084ecb291"

  url "https://github.com/ut0s/homebrew-alttabalt/releases/download/v1.0.1/AltTabAlt-v1.0.1.zip",
      verified: "github.com/ut0s/homebrew-alttabalt/"
  name "AltTabAlt"
  desc "Window switcher with Alt-Tab behavior"
  homepage "https://github.com/ut0s/homebrew-alttabalt"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "AltTabAlt.app"

  zap trash: [
    "~/Library/Preferences/com.alttabalt.app.plist",
  ]

  caveats do
    unsigned_accessibility
  end
end
