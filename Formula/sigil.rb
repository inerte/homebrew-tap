class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-15T18-25-27Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-15T18-25-27Z/sigil-2026-04-15T18-25-27Z-darwin-arm64.tar.gz"
      sha256 "5a20bc3c6cca86307e1ca011851fc238a14648b71798507b36605c9d7ff738c4"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-15T18-25-27Z/sigil-2026-04-15T18-25-27Z-darwin-x64.tar.gz"
      sha256 "9358ad832c722cd73f951d8d6fd50b5ed1894b1627e614310405f26cd06bb025"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-15T18-25-27Z/sigil-2026-04-15T18-25-27Z-linux-arm64.tar.gz"
      sha256 "03cd188e628f6ecdf8ae4409517f4d03007bc9981fa5e46a124bbad98b0dd92d"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-15T18-25-27Z/sigil-2026-04-15T18-25-27Z-linux-x64.tar.gz"
      sha256 "33f63b132a22d6fe6d04673b6d08bb56cc376a8c22e44b3e8fe26897c8727213"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-04-15T18-25-27Z", shell_output("#{bin}/sigil --version")
  end
end
