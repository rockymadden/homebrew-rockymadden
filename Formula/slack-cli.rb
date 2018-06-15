class SlackCli < Formula
  homepage "https://github.com/rockymadden/slack-cli"
  url "https://github.com/rockymadden/slack-cli/archive/v0.18.0.tar.gz"
  sha256 "02738344cc000050e69f088941be29ce55b307bb41605494ff76d7c010a22960"

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
