class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-14T21-23-44Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-14T21-23-44Z/sigil-2026-04-14T21-23-44Z-darwin-arm64.tar.gz"
      sha256 "68607aa5f3c47c266d2c02be0e2382b0d1dcc1b93428819e04387a3b5fe7d17e"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-14T21-23-44Z/sigil-2026-04-14T21-23-44Z-darwin-x64.tar.gz"
      sha256 "cfa2b6c445d723ef15ef4f5c69c87232e169b711a589d23c99435c2b6838f5d1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-14T21-23-44Z/sigil-2026-04-14T21-23-44Z-linux-arm64.tar.gz"
      sha256 "406e1472a3c6bbcfb63b3aa16a30be125657cca616fe1b71ea37b520ff86e386"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-14T21-23-44Z/sigil-2026-04-14T21-23-44Z-linux-x64.tar.gz"
      sha256 "40e9e69c79bfeddbb8ba26e63e52f3e78bba94105d8a770ee8f217ce3a907b9b"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-04-14T21-23-44Z", shell_output("#{bin}/sigil --version")
  end
end
