cask "loadout-app" do
    # This version will be updated with each new release.
    version "0.0.0"
    # The sha256 will also be updated with each new release.
    sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855" # Placeholder
  
    # This URL points to the .dmg file in your GitHub Releases.
    # The `#{version}` part automatically uses the version string from above.
    url "https://github.com/your-username/homebrew-loadout/releases/download/v#{version}/Loadout-app-v#{version}.dmg"
  
    name "Loadout"
    desc "Your application's description here"
    homepage "https://your-app-homepage.com/" # Your app's marketing website
  
    # This is the name of the app bundle inside the .dmg.
    app "Loadout.app"
  
    # Optional: Automatically check for updates.
    auto_updates true
  
    # Optional: Add dependencies, like a specific macOS version.
    depends_on macos: ">= :sonoma"
  
    # Optional: Define what to do during uninstall.
    zap trash: [
      "~/Library/Application Support/Loadout",
      "~/Library/Preferences/com.yourcompany.loadout.plist",
      "~/Library/Caches/com.yourcompany.loadout",
    ]
  end