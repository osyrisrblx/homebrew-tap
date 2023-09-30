class Foreman < Formula
  desc "Toolchain manager for Roblox projects"
  homepage "https://github.com/Roblox/foreman"

  url "https://github.com/Roblox/foreman/releases/download/v1.2.0/foreman-linux.zip"
  version "1.2.0"
  # sha256 ""
  license "MIT"

  depends_on "openssl"

  def install
    bin.install "foreman"
  end

  test do
    system "#{bin}/foreman", "--version"
  end
end
