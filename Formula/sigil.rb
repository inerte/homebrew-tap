class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-03-15T05-06-24Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-15T05-06-24Z/sigil-2026-03-15T05-06-24Z-darwin-arm64.tar.gz"
      sha256 "767b593787cad86b6a8c2ce43501c906c02333e7907758a9e8c1706a2d42414b"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-15T05-06-24Z/sigil-2026-03-15T05-06-24Z-darwin-x64.tar.gz"
      sha256 "5552464b6a6575a9daafb27b9936832c851ffe068f1c265c2b42483f03f03d97"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-15T05-06-24Z/sigil-2026-03-15T05-06-24Z-linux-arm64.tar.gz"
      sha256 "d4d81a912af9c8926c974ef492a713dcbbbd271680975f824098b885ab6efc32"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-15T05-06-24Z/sigil-2026-03-15T05-06-24Z-linux-x64.tar.gz"
      sha256 "0bf87df25162d54949967eb8a52fdd4394f1b9a6d839d78d05e4369d8c806718"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-03-15T05-06-24Z", shell_output("#{bin}/sigil --version")
  end
end
