class TransferCli < Formula
  homepage "https://github.com/rockymadden/transfer-cli"
  url "https://github.com/rockymadden/transfer-cli/archive/v0.2.0.tar.gz"
  sha256 "2ecb674a0119ecf8d7983e544917c160507f13e800c2ab573262e5f3ca6f915d"

  depends_on "coreutils"

  def install
    bin.mkpath
    system "make", "install", "bindir=#{bin}"
  end

  test do
    system "transfer", "--help"
  end
end
