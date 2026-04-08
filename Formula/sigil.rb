class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-08T01-57-50Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-08T01-57-50Z/sigil-2026-04-08T01-57-50Z-darwin-arm64.tar.gz"
      sha256 "173c8b0d979a167adba4eb4357d1670b3c8d5531b9ad250d965ba34cfae57ef5"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-08T01-57-50Z/sigil-2026-04-08T01-57-50Z-darwin-x64.tar.gz"
      sha256 "b640aa8a9ebf66aa5d5838958adf0dd0cd0d750fbb8c29d02ae1d11fe0a7baf5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-08T01-57-50Z/sigil-2026-04-08T01-57-50Z-linux-arm64.tar.gz"
      sha256 "2763a0864750da9df445184a8d5c5587c3c93e189bf7d915aba8fd07a4bec8cc"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-08T01-57-50Z/sigil-2026-04-08T01-57-50Z-linux-x64.tar.gz"
      sha256 "6cd933008f369e7be2ccf34f61ed18f6c88ac298333aa36ff1b5287c64112089"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-04-08T01-57-50Z", shell_output("#{bin}/sigil --version")
  end
end
