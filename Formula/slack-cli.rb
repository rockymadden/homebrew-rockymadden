class SlackCli < Formula
  homepage "https://github.com/rockymadden/slack-cli"
  url "https://github.com/rockymadden/slack-cli/archive/v0.11.0.tar.gz"
  sha256 "952fb0f36efd3f74d8eb645f7134aa2e5b4a9210e9a2ecc5e5b43b10792bfdd9"

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
