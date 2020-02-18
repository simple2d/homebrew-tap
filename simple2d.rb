class Simple2d < Formula
  desc "Simple, open-source 2D graphics for everyone"
  homepage "http://simple2d.com"
  version = "1.2.0"
  url "https://github.com/simple2d/simple2d/archive/v#{version}.tar.gz"
  sha256 "72fe2f9e1684f846d8f373a0c14452c7191e354ef3cd9ddb3a9a2a7c1a7e2ab2"

  head "https://github.com/simple2d/simple2d.git"

  depends_on "sdl2"
  depends_on "sdl2_image"
  depends_on "sdl2_mixer" => %w[with-flac with-mpg123]
  depends_on "sdl2_ttf"

  resource "frameworks" do
    url "https://github.com/simple2d/simple2d/releases/download/v#{version}/simple2d-apple-#{version}.zip"
    sha256 "cce2925998305020aab811aac052960e9c306847b3da4f9cdeee0f8aa4117111"
  end

  def install
    system "make"
    system "make", "install", "PREFIX=#{prefix}"
    frameworks.install resource("frameworks")
  end

  test do
    assert_equal version, shell_output("#{bin}/simple2d -v").strip
  end
end
