cask "alttabalt" do
  version "1.0.9"
  sha256 "56a42dd8172ad194b5a19ab360fc114157f8362d94003f827014d37fb15f204b"

  url "https://github.com/ut0s/homebrew-alttabalt/releases/download/v1.0.9/AltTabAlt-v1.0.9.zip",
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
