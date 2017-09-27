class SlackCli < Formula
  homepage "https://github.com/rockymadden/slack-cli"
  url "https://github.com/rockymadden/slack-cli/archive/v0.14.0.tar.gz"
  sha256 "841f3c343d9d9a21535ef1dd24c424f6610eee2a43caf06620a377f6ab986d1a"

  depends_on "coreutils"
  depends_on "jq"

  def install
    bin.mkpath
    (etc/"slack-cli").mkpath
    system "make", "install", "bindir=#{bin}", "etcdir=#{etc}/slack-cli"
  end

  test do
    system "slack", "--help"
  end
end
