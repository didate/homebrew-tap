# typed: strict
# frozen_string_literal: true

cask "findy" do
  version "0.1.0"
  sha256 "b373b449480fead8d7bf33f80c6d2fa0901560bc3bd1bfdb276941b301ef8604"

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
