class SomafmCli < Formula
  homepage "https://github.com/rockymadden/somafm-cli"
  url "https://github.com/rockymadden/somafm-cli/archive/v0.2.0.tar.gz"
  sha256 "d1afaabe365601ffb91e61feebcf6c63c995f2e592fbb8969abb1f6e8ec253f9"

  depends_on "coreutils"
  depends_on "jq"
  depends_on "mpv"

  def install
    bin.mkpath
    system "make", "install", "bindir=#{bin}"
  end

  test do
    system "somafm", "--help"
  end
end
