class Imsg < Formula
  homepage "https://github.com/rockymadden/imsg.sh"
  url "https://github.com/rockymadden/imsg.sh/archive/v0.0.0.tar.gz"
  sha1 "c33caec435f68bf1b78e95f90e23ca000a288293"

  def install
    bin.install "imsg.sh" => "imsg"
  end
end
