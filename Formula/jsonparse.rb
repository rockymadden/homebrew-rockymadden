class Jsonparse < Formula
  homepage "https://github.com/rockymadden/JSON.sh"
  url "https://github.com/rockymadden/JSON.sh/archive/v0.2.1.tar.gz"
  sha1 "8520d3ddb211f314d24397cd6eb2e9b9e2d5d259"

  def install
    bin.install "JSON.sh" => "jsonparse"
  end
end
