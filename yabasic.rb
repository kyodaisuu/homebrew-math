require "formula"

class Yabasic < Formula
  desc "Yet another BASIC"
  homepage "http://www.yabasic.de/"
  url "http://www.yabasic.de/download/yabasic-2.79.2.tar.gz"
  sha256 "9a819c570fe3986f14ec6b718f6eafb7caa627d192e22a865dcfe50b0ae2b175"
  def install
    ENV['CC'] = '/usr/bin/gcc -I/opt/X11/include'
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "#{bin}/yabasic", "-execute", "\"print 1+1\""
  end

end
