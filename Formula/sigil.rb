class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-15T01-01-32Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-15T01-01-32Z/sigil-2026-04-15T01-01-32Z-darwin-arm64.tar.gz"
      sha256 "ffeff0044820d99dd96ce040d0a661e832b021f22491f0b20f08a5ba134ad017"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-15T01-01-32Z/sigil-2026-04-15T01-01-32Z-darwin-x64.tar.gz"
      sha256 "9513db1562141b96590a7e312fcd2a4a507fd5ff1edd2ac10229344b8184eaf5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-15T01-01-32Z/sigil-2026-04-15T01-01-32Z-linux-arm64.tar.gz"
      sha256 "2ed276c009e2c7b83eb6b35f907abc22b23cb190558d0a21e471c8b5015dfaaf"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-15T01-01-32Z/sigil-2026-04-15T01-01-32Z-linux-x64.tar.gz"
      sha256 "ba8125974da749560f208eb7d02fb1fbb9d6375c3b676213d991a42d6e139d78"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-04-15T01-01-32Z", shell_output("#{bin}/sigil --version")
  end
end
