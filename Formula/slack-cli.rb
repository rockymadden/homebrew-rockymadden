class SlackCli < Formula
  homepage "https://github.com/rockymadden/slack-cli"
  url "https://github.com/rockymadden/slack-cli/archive/v0.0.0.tar.gz"
  sha256 "7aabb599c955eeff8d1137f744ab42e6b778d69e5ea5c998c363e2b7955b98f7"

  def install
    bin.install "src/slack"
  end
end
