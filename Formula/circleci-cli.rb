class CircleciCli < Formula
  homepage "https://github.com/rockymadden/circleci-cli"
  url "https://github.com/rockymadden/circleci-cli/archive/v0.2.0.tar.gz"
  sha256 "3d908a7ab8ab50d8285d2d417b14a3345305170408a2f6970a7f8b3364140c38"

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
