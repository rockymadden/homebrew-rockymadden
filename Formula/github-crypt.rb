class GithubCrypt < Formula
  homepage "https://github.com/rockymadden/github-crypt"
  url "https://github.com/rockymadden/github-crypt/archive/v0.5.0.tar.gz"
  sha256 "f672cbea6be19d9ce2e0685f23eb3dbb02ba8193630a603ce6ba95b72b6eac05"

  depends_on "coreutils"

  def install
    bin.mkpath
    (var/"github-crypt").mkpath
    system "make", "install", "bindir=#{bin}", "vardir=#{var}/github-crypt"
  end

  test do
    system "github-crypt", "--help"
  end
end
