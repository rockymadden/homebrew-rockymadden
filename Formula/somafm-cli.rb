class SomafmCli < Formula
  homepage "https://github.com/rockymadden/somafm-cli"
  url "https://github.com/rockymadden/somafm-cli/archive/v0.1.0.tar.gz"
  sha256 "89beff14eed14732fdb1879a2bbf958d511f12351c02d7d23cef1fbfa54d4f6e"

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
