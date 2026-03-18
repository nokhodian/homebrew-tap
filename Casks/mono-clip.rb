cask "mono-clip" do
  version "0.2.1"
  sha256 "c6bd875155950ca2954f83bc4dd375eea3c0e26803eb34b1ed417df73d911530"

  url "https://github.com/nokhodian/mono-clip/releases/download/v\#{version}/MonoClip_\#{version}_aarch64.dmg"
  name "MonoClip"
  desc "Blazing-fast macOS clipboard manager with folder organization, CLI, and AI integration"
  homepage "https://github.com/nokhodian/mono-clip"

  depends_on macos: ">= :ventura"

  app "MonoClip.app"

  zap trash: [
    "~/.monoclip",
    "~/Library/Application Support/com.monoes.monoclip",
    "~/Library/Preferences/com.monoes.monoclip.plist",
    "~/Library/Saved Application State/com.monoes.monoclip.savedState",
  ]
end
