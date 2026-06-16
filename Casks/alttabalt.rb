cask "alttabalt" do
  version "1.0.3"
  sha256 "f2179c1ee72e7023444f9033284d8bf5515214470daa64733e2093d533f5d2b6"

  url "https://github.com/ut0s/homebrew-alttabalt/releases/download/v1.0.3/AltTabAlt-v1.0.3.zip",
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
