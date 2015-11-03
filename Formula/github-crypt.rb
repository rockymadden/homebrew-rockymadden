class GithubCrypt < Formula
  homepage "https://github.com/rockymadden/github-crypt"
  url "https://github.com/rockymadden/github-crypt/archive/v0.2.0.tar.gz"
  sha256 "2e30cf8ad776a295d75be0ed25ef350204b7cff8dedf4d6042b000a17217d3bc"

  def install
    bin.install "src/github-crypt"
  end
end
