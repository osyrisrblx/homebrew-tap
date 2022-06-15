class Aftman < Formula
  desc "Prodigal sequel to Foreman"
  homepage "https://github.com/LPGhatguy/aftman"

  url "https://github.com/LPGhatguy/aftman/releases/download/v0.2.3/aftman-0.2.3-linux-x86_64.zip"
  sha256 "4228b29bcf09dbb46d0b4a68de167e66f589dceb8e4d7d72b6064ef3947bdb26"
  version "0.2.3"
  license "MIT"

  def install
    bin.install "aftman"
  end

  test do
    system "#{bin}/aftman", "--version"
  end
end
