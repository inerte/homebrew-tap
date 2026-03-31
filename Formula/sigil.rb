class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-03-31T01-20-13Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-31T01-20-13Z/sigil-2026-03-31T01-20-13Z-darwin-arm64.tar.gz"
      sha256 "ddc35c7ff6bc551b5e2108f04638d5ce0204ac1827bb20dff6f130ac72a41f20"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-31T01-20-13Z/sigil-2026-03-31T01-20-13Z-darwin-x64.tar.gz"
      sha256 "f38b9f5bf32be237f9b759a529eead1d00c91c5f48a44afb9dc7a70d3eded4b3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-31T01-20-13Z/sigil-2026-03-31T01-20-13Z-linux-arm64.tar.gz"
      sha256 "fcbf7664d84884d80aa791340eb3761d4b74c1fa0cce0faea324eea8895a0274"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-31T01-20-13Z/sigil-2026-03-31T01-20-13Z-linux-x64.tar.gz"
      sha256 "c4a60eb1654d8c0aa81a7ec67719c726f9396aa7cbb0c398a9dc43df2b2b075b"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-03-31T01-20-13Z", shell_output("#{bin}/sigil --version")
  end
end
