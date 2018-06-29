require "formula"

class Basmat < Formula
  desc "Bashicu Matrix Calculator"
  homepage "https://github.com/kyodaisuu/basmat"
  url "https://github.com/kyodaisuu/basmat/archive/v3.0.tar.gz"
  sha256 "9f3bda4550fe8aeb0b3de1dd452dac086676cceb97b04222763ff2a4fec169f9"
  def install
    system "./configure", "--prefix=#{prefix}", "--disable-dependency-tracking"
    system "make", "install"
  end
  test do
    system "#{bin}/basmat", "\"(0,0)(1,1)[2]\""
  end
end
