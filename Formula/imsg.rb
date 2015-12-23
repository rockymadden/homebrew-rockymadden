class Imsg < Formula
  homepage "https://github.com/rockymadden/imsg.sh"
  url "https://github.com/rockymadden/imsg.sh/archive/v0.0.0.tar.gz"
  sha256 "90608b406d75c8485b0948168b3cf2393165fe79101fe4da4febd40fc83ffb67"

  def install
    bin.install "imsg.sh" => "imsg"
  end
end
