class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-24T21-08-21Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-24T21-08-21Z/sigil-2026-04-24T21-08-21Z-darwin-arm64.tar.gz"
      sha256 "e76387bc1f52ca9dfbe36a72331aa15956766d700fc497aeb47188c6ad7630e4"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-24T21-08-21Z/sigil-2026-04-24T21-08-21Z-darwin-x64.tar.gz"
      sha256 "d19673c2636aba05d2ef935ba608cdf93f6d1fba635fb6ede007adade6d4a975"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-24T21-08-21Z/sigil-2026-04-24T21-08-21Z-linux-arm64.tar.gz"
      sha256 "c34505dabaf8e92b7155e33955bac9fb6451233648e162f1ca41d08d7bbe05d9"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-24T21-08-21Z/sigil-2026-04-24T21-08-21Z-linux-x64.tar.gz"
      sha256 "b5b01a5f7f20e25e7785022a5100c9a8a730e50f21ce7e5b939a9ac6c9ee19f3"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
    pkgshare.install "runtime"
  end

  test do
    assert_match "sigil 2026-04-24T21-08-21Z", shell_output("#{bin}/sigil --version")
  end
end
