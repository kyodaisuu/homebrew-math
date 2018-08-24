require "formula"

class Basmat < Formula
  desc "Bashicu Matrix Calculator"
  homepage "https://kyodaisuu.github.io/basmat/"
  url "https://github.com/kyodaisuu/basmat/archive/v3.2.tar.gz"
  sha256 "fe9f954dd9cabdc5bc5d3e8eb4f2d4ac82799d2b96b476738bab309c36a28a38"
  def install
    system "./configure", "--prefix=#{prefix}", "--disable-dependency-tracking"
    system "make", "install"
  end
  test do
    system "#{bin}/basmat", "-T"
  end
end
