class GithubCrypt < Formula
  homepage "https://github.com/rockymadden/github-crypt"
  url "https://github.com/rockymadden/github-crypt/archive/v0.2.1.tar.gz"
  sha256 "ceccd9644bf0cb38ce5ddd508b503e1542f04f07e45b39383d7f9024a9ed0513"

  def install
    bin.install "src/github-crypt"
  end
end
