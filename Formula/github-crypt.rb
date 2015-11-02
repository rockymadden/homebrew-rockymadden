class GithubCrypt < Formula
  homepage "https://github.com/rockymadden/github-crypt"
  url "https://github.com/rockymadden/github-crypt/archive/v0.1.0.tar.gz"
  sha1 "d4d3dc7207a5b8a6d5682b9ebb7c7b0f6a996ccb"

  def install
    bin.install "src/github-crypt"
  end
end
