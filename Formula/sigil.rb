class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-18T15-31-55Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-18T15-31-55Z/sigil-2026-04-18T15-31-55Z-darwin-arm64.tar.gz"
      sha256 "49d1fb3234d00c9a9001d002b2fe3009da121e535c2a387a3379e2a4dd47de3b"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-18T15-31-55Z/sigil-2026-04-18T15-31-55Z-darwin-x64.tar.gz"
      sha256 "ce11bf97bc65d8c385f6ad3aea9ba30e360a9a2a845bfc25a7de3e20f3421995"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-18T15-31-55Z/sigil-2026-04-18T15-31-55Z-linux-arm64.tar.gz"
      sha256 "8314d0304baff2fd715551914c0550e63a57a2f65aed0dbe476b7c06198d1a50"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-18T15-31-55Z/sigil-2026-04-18T15-31-55Z-linux-x64.tar.gz"
      sha256 "bd28817a44c474fd50b9d8e85905abab5ecc13a9d10843aa155dd58e43b094d3"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
    pkgshare.install "runtime"
  end

  test do
    assert_match "sigil 2026-04-18T15-31-55Z", shell_output("#{bin}/sigil --version")
  end
end
