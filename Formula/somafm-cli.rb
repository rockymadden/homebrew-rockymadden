class SomafmCli < Formula
  homepage "https://github.com/rockymadden/somafm-cli"
  url "https://github.com/rockymadden/somafm-cli/archive/v0.3.0.tar.gz"
  sha256 "1d48dfbb62feb98fa38c8b3f61b875ff8dfba13c7cc49d4e077f606afce1d110"

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
