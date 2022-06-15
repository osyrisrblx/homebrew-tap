require "fileutils"

class RunInRoblox < Formula
  desc "Run a place, model, or individual script inside Roblox Studio"
  homepage "https://github.com/rojo-rbx/run-in-roblox"

  url "https://github.com/rojo-rbx/run-in-roblox/releases/download/v0.3.0/run-in-roblox-0.3.0-win64.zip"
  sha256 "590738bf134c0a1d3d6f865089bec8288fe7b7ec388471780f1f48b22d12440f"
  version "0.3.0"
  license "MIT"

  def install
    bin.install "run-in-roblox.exe" => "run-in-roblox"
  end

  # not sure why this is necessary, but run-in-roblox becomes readonly in the cellar
  def post_install
    chmod "+x", "#{bin}/run-in-roblox"
  end

  test do
    system "#{bin}/run-in-roblox", "--version"
  end
end
