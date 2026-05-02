class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-05-02T17-50-07Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-05-02T17-50-07Z/sigil-2026-05-02T17-50-07Z-darwin-arm64.tar.gz"
      sha256 "3de29f90eb38b068d9be0d3be10ece70fb7c43c5c3d51082eeb7fd518613399d"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-05-02T17-50-07Z/sigil-2026-05-02T17-50-07Z-darwin-x64.tar.gz"
      sha256 "efdedf88604e1850fc35823d31aa959a15aa670c61a1a769ee718d7d2248f926"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-05-02T17-50-07Z/sigil-2026-05-02T17-50-07Z-linux-arm64.tar.gz"
      sha256 "6a3447b2b7cf927cba09e080abdbd3e640e020325f6b07163576747531b58ee2"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-05-02T17-50-07Z/sigil-2026-05-02T17-50-07Z-linux-x64.tar.gz"
      sha256 "7888b7ddae97f3aa05686ff4491b35b459e24185d056b3dd34fa3721cf0d57a9"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
    pkgshare.install "runtime"
  end

  test do
    assert_match "sigil 2026-05-02T17-50-07Z", shell_output("#{bin}/sigil --version")
  end
end
