class SlackCli < Formula
  homepage "https://github.com/rockymadden/slack-cli"
  url "https://github.com/rockymadden/slack-cli/archive/v0.4.0.tar.gz"
  sha256 "442a7034f81b4f47ecc4272a7bb03cc95dc8d63c55b5600f6d6983008d9cf673"

  def install
    bin.mkpath
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "slack", "--help"
  end
end
