class CircleciCli < Formula
  homepage "https://github.com/rockymadden/circleci-cli"
  url "https://github.com/rockymadden/circleci-cli/archive/v0.8.1.tar.gz"
  sha256 "b04a5148c217b254d7da9dc81c4bdffd5934e270ec24beca439f072eb51f8cce"

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
