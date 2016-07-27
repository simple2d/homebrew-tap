class Simple2d < Formula
  desc "Simple, open-source 2D graphics for everyone"
  homepage "http://simple2d.com"
  url "https://github.com/simple2d/simple2d/archive/v0.3.0.tar.gz"
  sha256 "a39955508c14d278e812b447ca4fed46ad3e3c5a36d5e0654a01eff878a171e3"

  head "https://github.com/simple2d/simple2d.git"

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
