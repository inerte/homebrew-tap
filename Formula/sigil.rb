class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-05-02T17-14-33Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-05-02T17-14-33Z/sigil-2026-05-02T17-14-33Z-darwin-arm64.tar.gz"
      sha256 "f0c97ec74114e6ab6683f423fe78ab02b84bae6731690753a2c966c9324c87f9"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-05-02T17-14-33Z/sigil-2026-05-02T17-14-33Z-darwin-x64.tar.gz"
      sha256 "4808bf3a674191de6cd4b5ac109bcd58febad89d697e36807172ab8e741c836f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-05-02T17-14-33Z/sigil-2026-05-02T17-14-33Z-linux-arm64.tar.gz"
      sha256 "fc664b1ef92446ae0a9cecc71f76ef89a8f664888a43734987eb657925a74f48"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-05-02T17-14-33Z/sigil-2026-05-02T17-14-33Z-linux-x64.tar.gz"
      sha256 "23b50e8bf37efae62933c74bc77f0b512114188435390fd9740f874732438427"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
    pkgshare.install "runtime"
  end

  test do
    assert_match "sigil 2026-05-02T17-14-33Z", shell_output("#{bin}/sigil --version")
  end
end
