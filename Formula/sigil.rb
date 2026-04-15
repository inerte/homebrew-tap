class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-15T15-26-24Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-15T15-26-24Z/sigil-2026-04-15T15-26-24Z-darwin-arm64.tar.gz"
      sha256 "0a9f8adb3298d5df1c983dcc7cbbe34371a42817f4d9c01e3e73a7847c414da4"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-15T15-26-24Z/sigil-2026-04-15T15-26-24Z-darwin-x64.tar.gz"
      sha256 "ab10c86bd8e2cdf114b912a7c485b8ffa5d10952211aac059d094407be157d39"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-15T15-26-24Z/sigil-2026-04-15T15-26-24Z-linux-arm64.tar.gz"
      sha256 "2ba5cd831a6f5df88d81a0b8fc3d441b13efefc65fff6ca04ab7ed7995b65b3b"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-15T15-26-24Z/sigil-2026-04-15T15-26-24Z-linux-x64.tar.gz"
      sha256 "b64544adf8d858766060862920dab6e11a65caf0e15fab6cc46f64d7807073ec"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-04-15T15-26-24Z", shell_output("#{bin}/sigil --version")
  end
end
