class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-05-02T17-00-02Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-05-02T17-00-02Z/sigil-2026-05-02T17-00-02Z-darwin-arm64.tar.gz"
      sha256 "d5cd8cf33c0c314f100a6a8805e3b775b4d194080e080461b8e74887614c81f2"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-05-02T17-00-02Z/sigil-2026-05-02T17-00-02Z-darwin-x64.tar.gz"
      sha256 "ebeef66ff335aac943bbf5b55ad45271755a4ba93c8b7b501a01d1279bb59bf6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-05-02T17-00-02Z/sigil-2026-05-02T17-00-02Z-linux-arm64.tar.gz"
      sha256 "9387707f78636f9af8164fb6417cff5c84ce159142c35dc57fe0faa41e8796e2"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-05-02T17-00-02Z/sigil-2026-05-02T17-00-02Z-linux-x64.tar.gz"
      sha256 "ba1ca447d71007e401c5b03d4812c746dcf2d96de80540bcd5ae8064053ff3ef"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
    pkgshare.install "runtime"
  end

  test do
    assert_match "sigil 2026-05-02T17-00-02Z", shell_output("#{bin}/sigil --version")
  end
end
