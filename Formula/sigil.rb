class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-05-02T01-15-50Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-05-02T01-15-50Z/sigil-2026-05-02T01-15-50Z-darwin-arm64.tar.gz"
      sha256 "c25b131b2ad0a62ec683f8fd026059ee1ac09b68e90ba57f2dee73ab113a847b"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-05-02T01-15-50Z/sigil-2026-05-02T01-15-50Z-darwin-x64.tar.gz"
      sha256 "44a51a7df45d8f2f0d80c5f3a2c5839bc0e4b82bd287f4d60fd35f6d6eda6684"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-05-02T01-15-50Z/sigil-2026-05-02T01-15-50Z-linux-arm64.tar.gz"
      sha256 "cadd0733f102ad2c5b0df394ddeed012e3c6139ef3e3afddc4e805fa30b8e7b7"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-05-02T01-15-50Z/sigil-2026-05-02T01-15-50Z-linux-x64.tar.gz"
      sha256 "038ae30b31aeeebfac0ccd785714217b810d11800ea69785240f6bb215f1fc48"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
    pkgshare.install "runtime"
  end

  test do
    assert_match "sigil 2026-05-02T01-15-50Z", shell_output("#{bin}/sigil --version")
  end
end
