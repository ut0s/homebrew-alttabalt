cask "alttabalt" do
  version "1.0.4"
  sha256 "fa9aaa2cbf83461a702c3f13c918d1f9332003179db12143b21a2664df8239b7"

  url "https://github.com/ut0s/homebrew-alttabalt/releases/download/v1.0.4/AltTabAlt-v1.0.4.zip",
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
