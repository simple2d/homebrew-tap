class Simple2d < Formula
  desc "Simple, open-source 2D graphics for everyone"
  homepage "http://simple2d.com"
  url "https://github.com/simple2d/simple2d/archive/v0.7.0.tar.gz"
  sha256 "719a980efb4cc2dee9398b3100fbf00d0dabc339ac393124fe9ff9a2d5a2676a"

  head "https://github.com/simple2d/simple2d.git"

  depends_on "sdl2"
  depends_on "sdl2_image"
  depends_on "sdl2_mixer" => %w[with-flac with-smpeg2]
  depends_on "sdl2_ttf"

  resource "frameworks" do
    url "https://github.com/simple2d/simple2d/releases/download/v0.7.0/simple2d-apple-frameworks-0.7.0.zip"
    sha256 "c33347a2fd115efc8982fdd1891b473ff5cb0f2eeca1e78a011879a697da7086"
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
