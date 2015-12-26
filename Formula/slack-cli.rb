class SlackCli < Formula
  homepage "https://github.com/rockymadden/slack-cli"
  url "https://github.com/rockymadden/slack-cli/archive/v0.7.2.tar.gz"
  sha256 "be20e85085f2db2f6cc81c06ed91229faf5a52ac192eddae790c260242d6e4f9"

  depends_on "coreutils"

  def install
    bin.mkpath
    (etc/"slack-cli").mkpath
    system "make", "install", "prefix=#{prefix}", "etcdir=#{etc}/slack-cli"
  end

  test do
    system "slack", "--help"
  end
end
