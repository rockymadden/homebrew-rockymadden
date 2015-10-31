class GithubCrypt < Formula
  homepage "https://github.com/rockymadden/github-crypt"
  url "https://github.com/rockymadden/github-crypt/archive/v0.0.1.tar.gz"
  sha1 "3fe7aa78064d71fa496d835a93455cf11f0cb26f"

  def install
    bin.install "src/ghcrypt"
  end
end
