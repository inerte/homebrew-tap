class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-16T16-43-19Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T16-43-19Z/sigil-2026-04-16T16-43-19Z-darwin-arm64.tar.gz"
      sha256 "1eab1544e20a371d361b332bc1e4eb4e68d2d06c8fbd616f655239658fc7e24d"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T16-43-19Z/sigil-2026-04-16T16-43-19Z-darwin-x64.tar.gz"
      sha256 "9f04b058e828c8e162452dceadeb17ac86de1b1c67dafe64e8e60ceedf85a80b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T16-43-19Z/sigil-2026-04-16T16-43-19Z-linux-arm64.tar.gz"
      sha256 "d4f5befdf7aac2375d31cd7621cc36c0188c60d674490649406f5011a9d8e717"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T16-43-19Z/sigil-2026-04-16T16-43-19Z-linux-x64.tar.gz"
      sha256 "e5cd29bbeb07255a56259d4685f9d33306021156fc5a2ceffb895de3b70b4033"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
    pkgshare.install "runtime"
  end

  test do
    assert_match "sigil 2026-04-16T16-43-19Z", shell_output("#{bin}/sigil --version")
  end
end
