require "formula"

class Yabasic < Formula
  desc "Yet another BASIC"
  homepage "http://www.yabasic.de/"
  url "http://www.yabasic.de/download/yabasic-2.86.4.tar.gz"
  sha256 "0287fca8bfb38005ba723e3615cfeae19e2625bec87a87bb01a02897a30706a9"
  def install
    ENV['CC'] = '/usr/bin/gcc -I/opt/X11/include'
    system "./configure", "--prefix=#{prefix}", "--disable-use-ffi"
    system "make", "install"
  end

  test do
    system "#{bin}/yabasic", "-v"
  end

end
