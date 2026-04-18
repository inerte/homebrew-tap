class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-18T02-02-19Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-18T02-02-19Z/sigil-2026-04-18T02-02-19Z-darwin-arm64.tar.gz"
      sha256 "720c79130ffe0c56cb4c737fdc1d16159af60d8f649e60e270424a84024af60b"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-18T02-02-19Z/sigil-2026-04-18T02-02-19Z-darwin-x64.tar.gz"
      sha256 "85becbaf42366b8a90abfe2e6487a096edc50af890e9d03f1569b9af107b0f18"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-18T02-02-19Z/sigil-2026-04-18T02-02-19Z-linux-arm64.tar.gz"
      sha256 "b86cdf1657197ca374d4341a5ab642c89058ec3029aef224979e5c6f77f496dd"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-18T02-02-19Z/sigil-2026-04-18T02-02-19Z-linux-x64.tar.gz"
      sha256 "c6f412f8b0f77e6fafea233ee6f04db0d2b5c3431aaf0ce9d0ed8fa4bc385aae"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
    pkgshare.install "runtime"
  end

  test do
    assert_match "sigil 2026-04-18T02-02-19Z", shell_output("#{bin}/sigil --version")
  end
end
