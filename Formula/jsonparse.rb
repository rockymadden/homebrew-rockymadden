class Jsonparse < Formula
  homepage "https://github.com/rockymadden/JSON.sh"
  url "https://github.com/rockymadden/JSON.sh/archive/v0.2.1.tar.gz"
  sha256 "1fa727f8bc877d4aee4c8b89fa5d1a72a19104da62cf570d7ad95245823c821f"

  def install
    bin.install "JSON.sh" => "jsonparse"
  end
end
