cask "alttabalt" do
  version "1.0.7"
  sha256 "c1fdc5593ab2412f75cfe4418582f3b51c9cd69a46a3e42c17763d4e6f7ed56b"

  url "https://github.com/ut0s/homebrew-alttabalt/releases/download/v1.0.7/AltTabAlt-v1.0.7.zip",
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
