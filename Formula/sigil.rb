class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-03-17T16-40-54Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-17T16-40-54Z/sigil-2026-03-17T16-40-54Z-darwin-arm64.tar.gz"
      sha256 "2160e5046b58c026b873b05e539652d8d833ac320b2705f12bba0d3cca472abc"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-17T16-40-54Z/sigil-2026-03-17T16-40-54Z-darwin-x64.tar.gz"
      sha256 "827bce1f515d0b43facb8f11f1526e96bfb39465a99ced9f826e15297f8f582d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-17T16-40-54Z/sigil-2026-03-17T16-40-54Z-linux-arm64.tar.gz"
      sha256 "db5c26ea640c9cc18c7aad2333137465d7485ccbaa2768aa4e4c365d560ff7c9"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-17T16-40-54Z/sigil-2026-03-17T16-40-54Z-linux-x64.tar.gz"
      sha256 "7dab09ab48cf5d4106f978f045de92a5c6d33845d33abc4a3e6c9b1c60ef83d1"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-03-17T16-40-54Z", shell_output("#{bin}/sigil --version")
  end
end
