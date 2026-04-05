class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-05T04-12-30Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-05T04-12-30Z/sigil-2026-04-05T04-12-30Z-darwin-arm64.tar.gz"
      sha256 "91ff4c933428fb87d7ebe07f54330e1dab944dcb2a62b252e8b938a5460abddc"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-05T04-12-30Z/sigil-2026-04-05T04-12-30Z-darwin-x64.tar.gz"
      sha256 "c4f2769a59f576ad14102ae3019876c6e9fee88f028d45b3366caf294fdde144"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-05T04-12-30Z/sigil-2026-04-05T04-12-30Z-linux-arm64.tar.gz"
      sha256 "3d00aada4cc5cb66944ff51b1a3aba0ff060a8e225437a919e576cbdf9fe5c1a"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-05T04-12-30Z/sigil-2026-04-05T04-12-30Z-linux-x64.tar.gz"
      sha256 "771047f1fa1aaaa2d6849f54043022f34b85a7a85fa53ccf37bdc9654b7eb625"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-04-05T04-12-30Z", shell_output("#{bin}/sigil --version")
  end
end
