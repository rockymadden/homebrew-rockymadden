class SlackCli < Formula
  homepage "https://github.com/rockymadden/slack-cli"
  url "https://github.com/rockymadden/slack-cli/archive/v0.6.0.tar.gz"
  sha256 "d8293fa7a1e826f000eb3eff228330fd219d6a3dea55d045d161b5f8e0743115"

  def install
    bin.mkpath
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "slack", "--help"
  end
end
