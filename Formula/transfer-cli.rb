class TransferCli < Formula
  homepage "https://github.com/rockymadden/transfer-cli"
  url "https://github.com/rockymadden/transfer-cli/archive/v0.1.0.tar.gz"
  sha256 "19029f7d92e08edde263afc741ea5fcbe2276a203337271245915a4042313961"

  depends_on "coreutils"

  def install
    bin.mkpath
    system "make", "install", "bindir=#{bin}"
  end

  test do
    system "transfer", "--help"
  end
end
