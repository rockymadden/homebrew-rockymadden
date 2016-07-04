class CircleciCli < Formula
  homepage "https://github.com/rockymadden/circleci-cli"
  url "https://github.com/rockymadden/circleci-cli/archive/v0.7.0.tar.gz"
  sha256 "6883921e2a117ce408889f16708a940689412f916920c16054fd261844ed410e"

  depends_on "coreutils"
  depends_on "git"
  depends_on "hub"
  depends_on "jq"
  depends_on "terminal-notifier"

  def install
    bin.mkpath
    (etc/"circleci-cli").mkpath
    system "make", "install", "bindir=#{bin}", "etcdir=#{etc}/circleci-cli"
  end

  test do
    system "circleci", "--help"
  end
end
