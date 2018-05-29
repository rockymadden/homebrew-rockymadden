class SomafmCli < Formula
  homepage "https://github.com/rockymadden/somafm-cli"
  url "https://github.com/rockymadden/somafm-cli/archive/v0.3.1.tar.gz"
  sha256 "6b8a18549cf7db11ac50b86d8d792b521f1936fe39b1fbcbbf12c0f6d030e71c"

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
