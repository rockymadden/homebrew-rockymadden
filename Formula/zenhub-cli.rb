class ZenhubCli < Formula
  homepage "https://github.com/rockymadden/zenhub-cli"
  url "https://github.com/rockymadden/zenhub-cli/archive/v0.1.0.tar.gz"
  sha256 "9cd6f49133a8ea4357a48f890f9233f3a2780e838beb98c3ba463ba793e09251"

  depends_on "coreutils"
  depends_on "hub"
  depends_on "jq"

  def install
    bin.mkpath
    (etc/"zenhub-cli").mkpath
    system "make", "install", "bindir=#{bin}", "etcdir=#{etc}/zenhub-cli"
  end

  test do
    system "zenhub", "--help"
  end
end
