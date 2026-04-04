class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-04T23-30-36Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-04T23-30-36Z/sigil-2026-04-04T23-30-36Z-darwin-arm64.tar.gz"
      sha256 "7243967e39f9c74a8a7f24c18f422dc2ed4a062053ccfd3eacd3d5df18a96045"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-04T23-30-36Z/sigil-2026-04-04T23-30-36Z-darwin-x64.tar.gz"
      sha256 "004fe94879e99140472d1a107c7cb5d421367c96db09e3157205777b88041c48"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-04T23-30-36Z/sigil-2026-04-04T23-30-36Z-linux-arm64.tar.gz"
      sha256 "3e24a6270eff1d99b148223473b21c6574e8b85c1d70dae96b723e76de50cad3"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-04T23-30-36Z/sigil-2026-04-04T23-30-36Z-linux-x64.tar.gz"
      sha256 "5883e12ad2a6eb4281d2a2e2cc3900ce14c3022095099d8a8872f4b23a526b42"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-04-04T23-30-36Z", shell_output("#{bin}/sigil --version")
  end
end
