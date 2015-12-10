class SlackCli < Formula
  homepage "https://github.com/rockymadden/slack-cli"
  url "https://github.com/rockymadden/slack-cli/archive/v0.3.1.tar.gz"
  sha256 "6e3659ad5d184d6296b1c6e0a28a1eac820d15eaa528c7e4dee4708ca0274179"

  def install
    bin.install "src/slack"
  end
end
