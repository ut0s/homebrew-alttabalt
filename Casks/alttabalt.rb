cask "alttabalt" do
  version "1.0.5"
  sha256 "33529f3824487989bcbd0d6460c0a008a9f732115ae7495d762655b8365e149a"

  url "https://github.com/ut0s/homebrew-alttabalt/releases/download/v1.0.5/AltTabAlt-v1.0.5.zip",
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
