class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-16T14-11-14Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T14-11-14Z/sigil-2026-04-16T14-11-14Z-darwin-arm64.tar.gz"
      sha256 "7ae88bf36ee0ba29365e7093c890d9f533df3dec675953ff9649fb1afc79a077"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T14-11-14Z/sigil-2026-04-16T14-11-14Z-darwin-x64.tar.gz"
      sha256 "e892d38d5dbea0b8cd565072d4fbdd1310b9e319de2c3a032f04dd97cbae1b01"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T14-11-14Z/sigil-2026-04-16T14-11-14Z-linux-arm64.tar.gz"
      sha256 "f26057e61e9f78a5fd167d60bae15364dc1a4a922e3fbc6ed332bf36698cb79b"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T14-11-14Z/sigil-2026-04-16T14-11-14Z-linux-x64.tar.gz"
      sha256 "effeda3af3b2f9eb6f0ab436f974b1eede1696e1f6589b8f4fdd6d3b65569528"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
  end

  test do
    assert_match "sigil 2026-04-16T14-11-14Z", shell_output("#{bin}/sigil --version")
  end
end
