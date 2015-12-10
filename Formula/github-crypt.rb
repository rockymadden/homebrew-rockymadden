class GithubCrypt < Formula
  homepage "https://github.com/rockymadden/github-crypt"
  url "https://github.com/rockymadden/github-crypt/archive/v0.4.0.tar.gz"
  sha256 "56152739713aa43119e99d38cd7b1a8a407c526e7349f69f667166903b9b1792"

  def install
    bin.mkpath
    system "make", "install", "PREFIX=#{prefix}"
  end

  depends_on "coreutils"

  test do
    system "github-crypt", "--help"
  end
end
