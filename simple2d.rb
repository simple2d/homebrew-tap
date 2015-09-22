class Simple2d < Formula
  desc "Simple, open-source 2D graphics for everyone."
  homepage "http://simple2d.com"
  url "https://github.com/simple2d/simple2d/archive/v0.0.3.tar.gz"
  sha256 "e63bdf80569d67611ea2a8c22c86c4af9e7983fe2eadc40ae67bbb419ae5310c"

  depends_on "sdl2"
  depends_on "sdl2_image" => %w{with-jpeg with-libpng with-libtiff with-webp}
  depends_on "sdl2_mixer" => %w{with-flac with-smpeg2 with-libvorbis}
  depends_on "sdl2_ttf"

  def install
    system "make"
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    # do something here
  end
end
