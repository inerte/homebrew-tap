class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-05-01T21-26-33Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-05-01T21-26-33Z/sigil-2026-05-01T21-26-33Z-darwin-arm64.tar.gz"
      sha256 "60038aebccd6a78bc66bba4ea4bae0bf8c1f0eaf2e85dd60d2322a643642adfb"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-05-01T21-26-33Z/sigil-2026-05-01T21-26-33Z-darwin-x64.tar.gz"
      sha256 "540602477d68e7bf0edf566febb4cc9bc6df13e5cd9b4f1605805ea0b09f0fb1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-05-01T21-26-33Z/sigil-2026-05-01T21-26-33Z-linux-arm64.tar.gz"
      sha256 "5a7164406919ff9b96b748e24dadbc675531f73eacc65408ddd3ab3c9a11d4cd"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-05-01T21-26-33Z/sigil-2026-05-01T21-26-33Z-linux-x64.tar.gz"
      sha256 "e83f431019abdbe8938831139ce55e24220e9166aa4a810fe5d5b2cee7871ff0"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
    pkgshare.install "runtime"
  end

  test do
    assert_match "sigil 2026-05-01T21-26-33Z", shell_output("#{bin}/sigil --version")
  end
end
