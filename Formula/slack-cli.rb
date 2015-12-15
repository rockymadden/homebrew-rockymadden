class SlackCli < Formula
  homepage "https://github.com/rockymadden/slack-cli"
  url "https://github.com/rockymadden/slack-cli/archive/v0.5.0.tar.gz"
  sha256 "1567a7343edc1d031781d8d2c52d880599070e4fc10fdf3258265bd90668abe3"

  def install
    bin.mkpath
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "slack", "--help"
  end
end
