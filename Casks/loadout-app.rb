cask "loadout-app" do
    version "1.0.0"
    sha256 "9c3ee20b5fdece88b3d1fef464bb25fb302cd5fde090109ba8d96430988571e2"

    url "https://github.com/nilrema/homebrew-loadout/releases/download/v#{version}/Loadout-app-v#{version}.dmg"
  
    name "Loadout"
    desc "A simple menu bar app for dragging and dropping files and sharing them via AirDrop"
    homepage "https://your-app-homepage.com/"
  
    # This is the name of the app bundle inside the .dmg.
    app "Loadout.app"

    auto_updates true
    depends_on macos: ">= :sonoma"

    zap trash: [
      "~/Library/Application Support/Loadout",
      "~/Library/Preferences/com.yourcompany.loadout.plist",
      "~/Library/Caches/com.yourcompany.loadout",
    ]
  end