cask "alttabalt" do
  version "1.0.2"
  sha256 "cf01cfd783aa56d5d9b18e3eb68c265a09add25a51bd55d922ad32415c6790ca"

  url "https://github.com/ut0s/homebrew-alttabalt/releases/download/v1.0.2/AltTabAlt-v1.0.2.zip",
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
