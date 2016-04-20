class Simple2d < Formula
  desc "Simple, open-source 2D graphics for everyone"
  homepage "http://simple2d.com"
  url "https://github.com/simple2d/simple2d/archive/v0.2.1.tar.gz"
  sha256 "001a82f4560c57bff9a756bed6cda1481a7db10391fe0a8fc3c6c7ffe3ed6db7"

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
