class Msieve < Formula
  desc "Factor large integers"
  homepage "https://sourceforge.net/projects/msieve/"
  url "https://sourceforge.net/projects/msieve/files/msieve/Msieve%20v1.53/msieve153_src.tar.gz"
  sha256 "c5fcbaaff266a43aa8bca55239d5b087d3e3f138d1a95d75b776c04ce4d93bb4"

  depends_on "gcc"

  def install
    system "make", "all"
    mkdir bin
    bin.install "msieve"
  end

  test do
    system "#{bin}/msieve", "-q", "12"
  end
end
