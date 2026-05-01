class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-05-01T21-21-44Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-05-01T21-21-44Z/sigil-2026-05-01T21-21-44Z-darwin-arm64.tar.gz"
      sha256 "3b300e04eccdbaa00533165bcf301e3fbc89fb302fc58ba26b8a76ebc7dd267a"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-05-01T21-21-44Z/sigil-2026-05-01T21-21-44Z-darwin-x64.tar.gz"
      sha256 "abc7c615418d07120bbcc849d61b79929659c516b39326509b4469daa1b9bc6b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-05-01T21-21-44Z/sigil-2026-05-01T21-21-44Z-linux-arm64.tar.gz"
      sha256 "d120895583a7e9e57f5772ff6ae364bb5d06636f9060bfcae648d67272ba07f4"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-05-01T21-21-44Z/sigil-2026-05-01T21-21-44Z-linux-x64.tar.gz"
      sha256 "289a4eb1ec23826f6e99358d968d9fec519baa616f9aa6a2daeb3281786e6663"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
    pkgshare.install "runtime"
  end

  test do
    assert_match "sigil 2026-05-01T21-21-44Z", shell_output("#{bin}/sigil --version")
  end
end
