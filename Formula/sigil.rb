class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-03-22T05-14-57Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-22T05-14-57Z/sigil-2026-03-22T05-14-57Z-darwin-arm64.tar.gz"
      sha256 "ce0456c5757f0090a1f0078db354e43ac2e21da31a7b307a3d256a5ff113343b"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-22T05-14-57Z/sigil-2026-03-22T05-14-57Z-darwin-x64.tar.gz"
      sha256 "450bef80bb158c3cf2feee0527a211ece2b5c51e2d263316728fc0b3c52769b8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-22T05-14-57Z/sigil-2026-03-22T05-14-57Z-linux-arm64.tar.gz"
      sha256 "1dd9a0002538be0fd1c6d2667395f6d04ec0a235eddc508a16b6f9c17b4fdf54"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-22T05-14-57Z/sigil-2026-03-22T05-14-57Z-linux-x64.tar.gz"
      sha256 "5890beb66ffcbd128dbe089f94d0888e41f7ee11e08cc3bf4f35a295fce13578"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-03-22T05-14-57Z", shell_output("#{bin}/sigil --version")
  end
end
