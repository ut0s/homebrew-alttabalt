cask "alttabalt" do
  version "1.0.10"
  sha256 "ec493d2e1e513176483763dd666456267a3b9f0f161bceac22682a03e9125bc4"

  url "https://github.com/ut0s/homebrew-alttabalt/releases/download/v1.0.10/AltTabAlt-v1.0.10.zip",
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
