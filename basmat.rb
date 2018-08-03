require "formula"

class Basmat < Formula
  desc "Bashicu Matrix Calculator"
  homepage "https://kyodaisuu.github.io/basmat/"
  url "https://github.com/kyodaisuu/basmat/archive/v3.1.tar.gz"
  sha256 "4db441419d9d2f05e50001b06592b42d1f173ff28c002831e53ec6108fdac292"
  def install
    system "./configure", "--prefix=#{prefix}", "--disable-dependency-tracking"
    system "make", "install"
  end
  test do
    system "#{bin}/basmat", "-T"
  end
end
