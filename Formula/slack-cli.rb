class SlackCli < Formula
  homepage "https://github.com/rockymadden/slack-cli"
  url "https://github.com/rockymadden/slack-cli/archive/v0.2.0.tar.gz"
  sha256 "ecabd9adc80fe012e6d8c3a52665bbb0c1ffd2bbfd7224ae5e3f51e965d00e43"

  def install
    bin.install "src/slack"
  end
end
