class Simple2d < Formula
  desc "Simple, open-source 2D graphics for everyone"
  homepage "http://simple2d.com"
  version = "1.1.0"
  url "https://github.com/simple2d/simple2d/archive/v#{version}.tar.gz"
  sha256 "de621fbdff69a1ded2efe51f2b088f3e572dbd9f1a1eb772fce813774234a66a"

  head "https://github.com/simple2d/simple2d.git"

  depends_on "sdl2"
  depends_on "sdl2_image"
  depends_on "sdl2_mixer" => %w[with-flac with-mpg123]
  depends_on "sdl2_ttf"

  resource "frameworks" do
    url "https://github.com/simple2d/simple2d/releases/download/v#{version}/simple2d-apple-frameworks-#{version}.zip"
    sha256 "375e2fe4246bcbb89c1323a38abe32516836c47852b0575b2ca6bd5e924e4cc4"
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
