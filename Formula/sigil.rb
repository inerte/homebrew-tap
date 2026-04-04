class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-04T21-11-26Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-04T21-11-26Z/sigil-2026-04-04T21-11-26Z-darwin-arm64.tar.gz"
      sha256 "64700df033f12813def1cf9d0e8b1375098598fcc6ee96b9c389234202841fe8"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-04T21-11-26Z/sigil-2026-04-04T21-11-26Z-darwin-x64.tar.gz"
      sha256 "1a30eaf8546bd38e66eec3973421ed376d27f6591602a95ad10c5f99b624b2c9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-04T21-11-26Z/sigil-2026-04-04T21-11-26Z-linux-arm64.tar.gz"
      sha256 "4927bebe7694315c7d9d5b22286bc8a7716cdd10883023a2aa3fbee9c5516cce"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-04T21-11-26Z/sigil-2026-04-04T21-11-26Z-linux-x64.tar.gz"
      sha256 "f8e78da689d120edc9ce622f10a84ea8392702ebe792bd9f307a719db1bbb0b3"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-04-04T21-11-26Z", shell_output("#{bin}/sigil --version")
  end
end
