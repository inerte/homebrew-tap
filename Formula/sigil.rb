class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-04T19-32-16Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-04T19-32-16Z/sigil-2026-04-04T19-32-16Z-darwin-arm64.tar.gz"
      sha256 "db33a7b08c4555583580866060944ea073485a460834c2fad6c3a00b5788f4ae"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-04T19-32-16Z/sigil-2026-04-04T19-32-16Z-darwin-x64.tar.gz"
      sha256 "672a07be6557d7a9f1d3115a724b75dc26252c4d67e59210852fbee5bebf35ab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-04T19-32-16Z/sigil-2026-04-04T19-32-16Z-linux-arm64.tar.gz"
      sha256 "6ee7e8dfb07453ec07884bfdb21fc987ebf72ee12ac1296c49c394f374d4646d"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-04T19-32-16Z/sigil-2026-04-04T19-32-16Z-linux-x64.tar.gz"
      sha256 "da6dd021ace310246f473318784250e1f126ad52afaf0d6f381e40a868bbfd2e"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-04-04T19-32-16Z", shell_output("#{bin}/sigil --version")
  end
end
