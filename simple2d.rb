class Simple2d < Formula
  desc "Simple, open-source 2D graphics for everyone"
  homepage "http://simple2d.com"
  url "https://github.com/simple2d/simple2d/archive/v0.9.0.tar.gz"
  sha256 "c03497b47a74dd220be8ff3aeedfa42bce36babd23df582281bf0f0c8b48ef0f"

  head "https://github.com/simple2d/simple2d.git"

  depends_on "sdl2"
  depends_on "sdl2_image"
  depends_on "mpg123"
  depends_on "sdl2_mixer" => %w[with-flac]
  depends_on "sdl2_ttf"

  resource "frameworks" do
    url "https://github.com/simple2d/simple2d/releases/download/v0.9.0/simple2d-apple-frameworks-0.9.0.zip"
    sha256 "9b270d3c1fc5baa490e15087c6fc431ce97872264dcf503ae005092124858b2f"
  end

  def install
    system "make"
    system "make", "install", "PREFIX=#{prefix}"
    frameworks.install resource("frameworks")
  end

  test do
    # do something here
  end
end
