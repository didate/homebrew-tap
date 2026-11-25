# typed: strict
# frozen_string_literal: true

# Homebrew cask for Findy. Copy it to the tap (github.com/didate/homebrew-tap, Casks/findy.rb)
# when a release is published, with the version and the SHA-256 that scripts/release.sh prints.
cask "findy" do
  version "0.2.1"
  sha256 "8935d6af2d0d108a2ef2d53b10f1d8bcdf6d2aaad92758c9e930184b875fdb61"

  url "https://github.com/didate/findy/releases/download/v#{version}/Findy-#{version}.dmg"
  name "Findy"
  desc "Native file manager focused on speed and reliability"
  homepage "https://github.com/didate/findy"

  depends_on macos: ">= :sonoma"

  app "Findy.app"

  zap trash: [
    "~/Library/Application Support/Findy",
    "~/Library/Preferences/app.findy.Findy.plist",
    "~/Library/Saved Application State/app.findy.Findy.savedState",
  ]
end
