class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-03-15T00-00-27Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-15T00-00-27Z/sigil-2026-03-15T00-00-27Z-darwin-arm64.tar.gz"
      sha256 "7d35af0e21f83264c856eb3cc0fc4c623e7cc5d0a0c4375d202bd04846483aae"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-15T00-00-27Z/sigil-2026-03-15T00-00-27Z-darwin-x64.tar.gz"
      sha256 "17792a23bf550f3a27f35d18714ec22801b58a264d342877bd6c0f57c19b69b3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-15T00-00-27Z/sigil-2026-03-15T00-00-27Z-linux-arm64.tar.gz"
      sha256 "94ba9b7bbb5133431d653d07e380ebdc694ac15bea77c2321b72507bb477bb34"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-15T00-00-27Z/sigil-2026-03-15T00-00-27Z-linux-x64.tar.gz"
      sha256 "7f9a00f409caec37a4e42c94bdaa6074469120a3c5c5ac952b3184a1b71fd03e"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-03-15T00-00-27Z", shell_output("#{bin}/sigil --version")
  end
end
