class GithubCrypt < Formula
  homepage "https://github.com/rockymadden/github-crypt"
  url "https://github.com/rockymadden/github-crypt/archive/v0.3.0.tar.gz"
  sha256 "cbabdd3a955732b4376f6aef9c0467e1fcb060da6a5211a926685400567a109f"

  def install
    bin.install "src/github-crypt"
  end
end
