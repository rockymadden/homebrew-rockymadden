class SlackCli < Formula
  homepage "https://github.com/rockymadden/slack-cli"
  url "https://github.com/rockymadden/slack-cli/archive/v0.1.0.tar.gz"
  sha256 "cca65e6e467f292b768428b9d856464c31ec45122f05301475911d1c5ce4360c"

  def install
    bin.install "src/slack"
  end
end
