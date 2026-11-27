# typed: strict
# frozen_string_literal: true

# Homebrew cask for Findy. Copy it to the tap (github.com/didate/homebrew-tap, Casks/findy.rb)
# when a release is published, with the version and the SHA-256 that scripts/release.sh prints.
cask "findy" do
  version "0.4.0"
  sha256 "d58ded8f91d9b7dd402d1eb1b21e8e61accc74750c3bf2ec294c6a59a44d8d2a"

  url "https://github.com/didate/findy/releases/download/v#{version}/Findy-#{version}.dmg"
  name "Findy"
  desc "Native file manager focused on speed and reliability"
  homepage "https://github.com/didate/findy"

  depends_on macos: :sonoma

  app "Findy.app"

  zap trash: [
    "~/Library/Application Support/Findy",
    "~/Library/Preferences/app.findy.Findy.plist",
    "~/Library/Saved Application State/app.findy.Findy.savedState",
  ]
end
