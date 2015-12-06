class SlackCli < Formula
  homepage "https://github.com/rockymadden/slack-cli"
  url "https://github.com/rockymadden/slack-cli/archive/v0.3.0.tar.gz"
  sha256 "bc58a7c7081cebf8a4faf1a58f2bdaf660d6ec037f33e45c9454c9606d4bd93b"

  def install
    bin.install "src/slack"
  end
end
