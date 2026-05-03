class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-05-03T23-00-58Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-05-03T23-00-58Z/sigil-2026-05-03T23-00-58Z-darwin-arm64.tar.gz"
      sha256 "7b5f6f0f2b9f41c4f5e28092006eac3007203e93adbfa66e53f8bc66f49f9cc4"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-05-03T23-00-58Z/sigil-2026-05-03T23-00-58Z-darwin-x64.tar.gz"
      sha256 "f119e1d639c1928d83aeea7370259c4b730daafff7e329b941267163edf3a4d5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-05-03T23-00-58Z/sigil-2026-05-03T23-00-58Z-linux-arm64.tar.gz"
      sha256 "800779bfb5039d1e5e449b0d93e0fe2a9b638b2c63aa7390e8ea385aa18ebe97"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-05-03T23-00-58Z/sigil-2026-05-03T23-00-58Z-linux-x64.tar.gz"
      sha256 "822ec891b3f5c212d8844a1c13062d63e260f17a802d18e2943fed7c3369f107"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
    pkgshare.install "runtime"
  end

  test do
    assert_match "sigil 2026-05-03T23-00-58Z", shell_output("#{bin}/sigil --version")
  end
end
