class SlackCli < Formula
  homepage "https://github.com/rockymadden/slack-cli"
  url "https://github.com/rockymadden/slack-cli/archive/v0.7.0.tar.gz"
  sha256 "6f905c36b199fc804e40a2ca548d539ed66f8917cb0b3dc575f98ef49da3ad2d"

  def install
    bin.mkpath
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "slack", "--help"
  end
end
