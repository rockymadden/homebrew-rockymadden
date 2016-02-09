class ZenhubCli < Formula
  homepage "https://github.com/rockymadden/zenhub-cli"
  url "https://github.com/rockymadden/zenhub-cli/archive/v0.0.0.tar.gz"
  sha256 "ffba9b448735326e77a4e60a5cd7d2510357aaaea9b1aa4e374223680abd4d08"

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
