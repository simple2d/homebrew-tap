class Simple2d < Formula
  desc "Simple, open-source 2D graphics for everyone"
  homepage "http://simple2d.com"
  version = "1.0.0"
  url "https://github.com/simple2d/simple2d/archive/v#{version}.tar.gz"
  sha256 "8a08763f0626a03c303392887a0c1641c1b4fb5af1be8645904e0274d2acd335"

  head "https://github.com/simple2d/simple2d.git"

  depends_on "sdl2"
  depends_on "sdl2_image"
  depends_on "sdl2_mixer" => %w[with-flac with-mpg123]
  depends_on "sdl2_ttf"

  resource "frameworks" do
    url "https://github.com/simple2d/simple2d/releases/download/v#{version}/simple2d-apple-frameworks-#{version}.zip"
    sha256 "a5db2a575051d758af0fe333cd8024a283d9dddb313571a354d03d2a7a5b14ac"
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
