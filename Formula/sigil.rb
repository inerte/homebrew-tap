class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-05-03T14-11-22Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-05-03T14-11-22Z/sigil-2026-05-03T14-11-22Z-darwin-arm64.tar.gz"
      sha256 "aecc2c99016881e88a4ce87795e2b43b922a6d7890eb4cde5d107c2844926c9a"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-05-03T14-11-22Z/sigil-2026-05-03T14-11-22Z-darwin-x64.tar.gz"
      sha256 "56f29af6733d23ba071514314ec21965e1bebe5541e0a40732e13e672b9a967f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-05-03T14-11-22Z/sigil-2026-05-03T14-11-22Z-linux-arm64.tar.gz"
      sha256 "d6ea903da281c2461e5652ea5059de2b53d1aa36dddb9c76ef42838b7765c808"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-05-03T14-11-22Z/sigil-2026-05-03T14-11-22Z-linux-x64.tar.gz"
      sha256 "50509889e2427438fe8546fa2ef9d40309a86cfc3acba692fad8bbb4ed344700"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
    pkgshare.install "runtime"
  end

  test do
    assert_match "sigil 2026-05-03T14-11-22Z", shell_output("#{bin}/sigil --version")
  end
end
