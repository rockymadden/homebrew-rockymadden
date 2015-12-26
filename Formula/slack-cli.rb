class SlackCli < Formula
  homepage "https://github.com/rockymadden/slack-cli"
  url "https://github.com/rockymadden/slack-cli/archive/v0.7.1.tar.gz"
  sha256 "7914f0498af124ef3fc87eb179b707e2957509ddd6933a0083a8073b0701a177"

  depends_on "coreutils"

  def install
    bin.mkpath
    system "make", "install", "PREFIX=#{prefix}", "CONFIG=~/.slack-cli"
  end

  test do
    system "slack", "--help"
  end
end
