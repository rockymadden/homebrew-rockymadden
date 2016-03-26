class SomafmCli < Formula
  homepage "https://github.com/rockymadden/somafm-cli"
  url "https://github.com/rockymadden/somafm-cli/archive/v0.0.0.tar.gz"
  sha256 "d49ade733a2dbf6d3fa5c066b58e0304076568e4c722473ffb6b4421a9e2e4c1"

  depends_on "coreutils"
  depends_on "mpv"

  def install
    bin.mkpath
    system "make", "install", "bindir=#{bin}"
  end

  test do
    system "somafm", "--help"
  end
end
