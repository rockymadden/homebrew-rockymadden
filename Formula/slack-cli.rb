class SlackCli < Formula
  homepage "https://github.com/rockymadden/slack-cli"
  url "https://github.com/rockymadden/slack-cli/archive/v0.8.0.tar.gz"
  sha256 "61d952837b9da163bd65427fbb812621025b1a6cfba81ae49555e0248ce0b4fa"

  depends_on "coreutils"
  depends_on "jq"

  def install
    bin.mkpath
    (etc/"slack-cli").mkpath
    system "make", "install", "prefix=#{prefix}", "etcdir=#{etc}/slack-cli"
  end

  test do
    system "slack", "--help"
  end
end
