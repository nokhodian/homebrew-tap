cask "mono-clip" do
  version "0.2.0"
  sha256 "315d4d57339d52cba5d3d64e700413ca10ce45c7b3939bd2a1ee5c641c618592"

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
