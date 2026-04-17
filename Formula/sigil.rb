class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-17T15-32-12Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-17T15-32-12Z/sigil-2026-04-17T15-32-12Z-darwin-arm64.tar.gz"
      sha256 "44edac6be1cb240f9e03ba3a45d4f44687e90095ff904cfc4c352b8208f8cb26"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-17T15-32-12Z/sigil-2026-04-17T15-32-12Z-darwin-x64.tar.gz"
      sha256 "4d62456cf3c3d9d581f2685d721fa2ccdff937e9d201419180a2210ce09ab75f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-17T15-32-12Z/sigil-2026-04-17T15-32-12Z-linux-arm64.tar.gz"
      sha256 "569b375eb4d3cf14f58b2bcf1f103392d21ec8d53404f03f7b27a80f0790d16b"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-17T15-32-12Z/sigil-2026-04-17T15-32-12Z-linux-x64.tar.gz"
      sha256 "f541989136b7b3ac2b242a8c03fb539c48fe791b84c835f6017f2d63960ce3fa"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
    pkgshare.install "runtime"
  end

  test do
    assert_match "sigil 2026-04-17T15-32-12Z", shell_output("#{bin}/sigil --version")
  end
end
