class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-05-02T17-14-08Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-05-02T17-14-08Z/sigil-2026-05-02T17-14-08Z-darwin-arm64.tar.gz"
      sha256 "70003b6a0e748fa0eb89ce748cade10c7f9537007a9b6457a9d9e981709c0bf2"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-05-02T17-14-08Z/sigil-2026-05-02T17-14-08Z-darwin-x64.tar.gz"
      sha256 "4f5a1861d48a13d1a4f28cfd4957cd52b4b7e0a62bb81e809ed5fdd94aa19838"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-05-02T17-14-08Z/sigil-2026-05-02T17-14-08Z-linux-arm64.tar.gz"
      sha256 "a1e17aa54f09df6226cfc24f4bfd713e493aa6da8a49a35b1497bb06db7702c1"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-05-02T17-14-08Z/sigil-2026-05-02T17-14-08Z-linux-x64.tar.gz"
      sha256 "772790a483828a20abeb8850963e6c5b68ca82916175cb5ec466f26fae0bba88"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
    pkgshare.install "runtime"
  end

  test do
    assert_match "sigil 2026-05-02T17-14-08Z", shell_output("#{bin}/sigil --version")
  end
end
