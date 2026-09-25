cask "alttabalt" do
  version "1.0.14"
  sha256 "6c954512f3788f8a57989579369affeb9027813136a16cead1a0c5a457e284b4"

  url "https://github.com/ut0s/homebrew-alttabalt/releases/download/v#{version}/AltTabAlt-v#{version}.zip"
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
    puts <<~EOS
      AltTabAlt is ad-hoc signed and is not notarized by Apple. macOS may block
      the first launch while the downloaded app has a quarantine attribute.

      Verify the installed app before removing quarantine:
        codesign --verify --deep --strict --verbose=2 /Applications/AltTabAlt.app

      If verification succeeds, remove quarantine and open the app:
        xattr -dr com.apple.quarantine /Applications/AltTabAlt.app
        open /Applications/AltTabAlt.app
    EOS
    unsigned_accessibility
  end
end
