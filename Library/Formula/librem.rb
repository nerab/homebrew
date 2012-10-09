require 'formula'

class Librem < Formula
  homepage 'http://www.creytiv.com/rem.html'
  url 'http://www.creytiv.com/pub/rem-0.4.2.tar.gz'
  sha1 'bd7fa6aea1782941162eae1c6d9c483ddbbe4103'

  depends_on 'libre' => :build

  def install
    system "make", "PREFIX=#{prefix}"
    system "make", "PREFIX=#{prefix}", "install"
  end

  def test
    File.exist?(File.join(prefix, 'lib' 'librem.dylib'))
  end
end
