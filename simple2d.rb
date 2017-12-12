class Simple2d < Formula
  desc "Simple, open-source 2D graphics for everyone"
  homepage "http://simple2d.com"
  url "https://github.com/simple2d/simple2d/archive/v0.8.0.tar.gz"
  sha256 "f41760494549c45945c39c5d0f31e53c3c68f849827db1fa9832dbb5a2b1f61f"

  head "https://github.com/simple2d/simple2d.git"

  depends_on "sdl2"
  depends_on "sdl2_image"
  depends_on "mpg123"
  depends_on "sdl2_mixer" => %w[with-flac]
  depends_on "sdl2_ttf"

  resource "frameworks" do
    url "https://github.com/simple2d/simple2d/releases/download/v0.8.0/simple2d-apple-frameworks-0.8.0.zip"
    sha256 "bd1bbf077626c8fb67449f2e66dddcfc0ad433f29f71ac3a5454b03a1dbdff3e"
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
