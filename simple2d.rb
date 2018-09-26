class Simple2d < Formula
  desc "Simple, open-source 2D graphics for everyone"
  homepage "http://simple2d.com"
  version = "1.0.1"
  url "https://github.com/simple2d/simple2d/archive/v#{version}.tar.gz"
  sha256 "0e58d45876ff3acdb856f525b1749d0c3612a51498bbdf2de797d6802e9cf6fa"

  head "https://github.com/simple2d/simple2d.git"

  depends_on "sdl2"
  depends_on "sdl2_image"
  depends_on "sdl2_mixer" => %w[with-flac with-mpg123]
  depends_on "sdl2_ttf"

  resource "frameworks" do
    url "https://github.com/simple2d/simple2d/releases/download/v#{version}/simple2d-apple-frameworks-#{version}.zip"
    sha256 "5228dbdbd791b42d2e3d117ec48a5eb7f14da97d9f880c3ff6ef6e143d551ccb"
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
