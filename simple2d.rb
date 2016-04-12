class Simple2d < Formula
  desc "Simple, open-source 2D graphics for everyone"
  homepage "http://simple2d.com"
  url "https://github.com/simple2d/simple2d/archive/v0.2.0.tar.gz"
  sha256 "a132327293ac6850cea88adc9be771b4ce5764c5e79479e104c6136164dcaaf5"

  depends_on "sdl2"
  depends_on "sdl2_image"
  depends_on "sdl2_mixer" => %w[with-flac with-smpeg2 with-libvorbis]
  depends_on "sdl2_ttf"

  def install
    system "make"
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    # do something here
  end
end
