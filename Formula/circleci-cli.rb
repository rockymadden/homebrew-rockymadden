class CircleciCli < Formula
  homepage "https://github.com/rockymadden/circleci-cli"
  url "https://github.com/rockymadden/circleci-cli/archive/v0.1.0.tar.gz"
  sha256 "e5fed588325467131c0ea68778decfb2245a2b7e904626908a46dde4e5a03184"

  depends_on "coreutils"
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
