cask "alttabalt" do
  version "1.0.6"
  sha256 "5d44174a0d977ca8365f0335753ec9918054af3a7816c023aaca05cf53d6eb2d"

  url "https://github.com/ut0s/homebrew-alttabalt/releases/download/v1.0.6/AltTabAlt-v1.0.6.zip",
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
