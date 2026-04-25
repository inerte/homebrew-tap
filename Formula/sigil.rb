class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-25T16-09-13Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-25T16-09-13Z/sigil-2026-04-25T16-09-13Z-darwin-arm64.tar.gz"
      sha256 "99c77c9b757ee37c9860eee61558668adef21209f27bbfb15f126cea35f4fbfb"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-25T16-09-13Z/sigil-2026-04-25T16-09-13Z-darwin-x64.tar.gz"
      sha256 "29c703df23b885d1f9a73f9d869e5d50fc507e50174fbfca0cf73812cd9a2476"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-25T16-09-13Z/sigil-2026-04-25T16-09-13Z-linux-arm64.tar.gz"
      sha256 "a40486ec4126fe36f7169938f56b46ff9eeec788df0fdef17072575600ba26b0"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-25T16-09-13Z/sigil-2026-04-25T16-09-13Z-linux-x64.tar.gz"
      sha256 "c81a1cb3afd5d6b377a21d8e1c9142253ebbae9cb93a880c897f752078f7a817"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
    pkgshare.install "runtime"
  end

  test do
    assert_match "sigil 2026-04-25T16-09-13Z", shell_output("#{bin}/sigil --version")
  end
end
