class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-05-02T01-05-21Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-05-02T01-05-21Z/sigil-2026-05-02T01-05-21Z-darwin-arm64.tar.gz"
      sha256 "56c18e0eccec8d10fdeb727cfa3e861e7f1c1ff3e09afc2a07a33681ee11efe5"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-05-02T01-05-21Z/sigil-2026-05-02T01-05-21Z-darwin-x64.tar.gz"
      sha256 "a86ed602e77b572a01381bb98eb583dda47f317c3399c1b7833655fec8fd9c28"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-05-02T01-05-21Z/sigil-2026-05-02T01-05-21Z-linux-arm64.tar.gz"
      sha256 "6e8305294f232079b2043f2e94798463540a5485301ebd3041d8775656069cb6"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-05-02T01-05-21Z/sigil-2026-05-02T01-05-21Z-linux-x64.tar.gz"
      sha256 "2460d407047434c065435740c74664b290147f27940aff54c7d42e73bf40785f"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
    pkgshare.install "runtime"
  end

  test do
    assert_match "sigil 2026-05-02T01-05-21Z", shell_output("#{bin}/sigil --version")
  end
end
