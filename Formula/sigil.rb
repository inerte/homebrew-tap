class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-03-31T21-42-18Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-31T21-42-18Z/sigil-2026-03-31T21-42-18Z-darwin-arm64.tar.gz"
      sha256 "19dbd5a8ae3d476ba95630cbf1a2a54a2a1b8fffe076dda63012e731d422a0b5"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-31T21-42-18Z/sigil-2026-03-31T21-42-18Z-darwin-x64.tar.gz"
      sha256 "bd7f2f94e9abc6aad88f007d5cb0ae28ad8b930129e6fa0ddc22630693161b6b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-31T21-42-18Z/sigil-2026-03-31T21-42-18Z-linux-arm64.tar.gz"
      sha256 "01a8927288dce5de345d3112581555e7882d0a7a50a54da67d9d3ce99e778282"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-31T21-42-18Z/sigil-2026-03-31T21-42-18Z-linux-x64.tar.gz"
      sha256 "ed4eebcb287a29190ce3ca9b328e0baf22f605d69a78b9f48f080b2b8c6535dd"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-03-31T21-42-18Z", shell_output("#{bin}/sigil --version")
  end
end
