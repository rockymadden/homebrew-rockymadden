class CircleciCli < Formula
  homepage "https://github.com/rockymadden/circleci-cli"
  url "https://github.com/rockymadden/circleci-cli/archive/v0.8.0.tar.gz"
  sha256 "c6e2cbc680afa7413d245a63133eb89afe101624448f75915e73d4d4656d17e8"

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
