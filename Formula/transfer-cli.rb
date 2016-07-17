class TransferCli < Formula
  homepage "https://github.com/rockymadden/transfer-cli"
  url "https://github.com/rockymadden/transfer-cli/archive/v0.0.0.tar.gz"
  sha256 "3728e1fb85a4fe8e49985a90c0d2d2901f1b9d3004a2dbe5bbe1b96c401eb715"

  depends_on "coreutils"

  def install
    bin.mkpath
    system "make", "install", "bindir=#{bin}"
  end

  test do
    system "transfer", "--help"
  end
end
