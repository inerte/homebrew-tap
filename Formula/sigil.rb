class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-05-06T22-26-22Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-05-06T22-26-22Z/sigil-2026-05-06T22-26-22Z-darwin-arm64.tar.gz"
      sha256 "de81788f35f828fd2a546822c13d92009bc5f98eae9f524f8f9a234dec36fef4"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-05-06T22-26-22Z/sigil-2026-05-06T22-26-22Z-darwin-x64.tar.gz"
      sha256 "52d9eb6bab717d73a0816f7d2a3b7f6c86faca4493b48cb6a019e489c0d2fb03"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-05-06T22-26-22Z/sigil-2026-05-06T22-26-22Z-linux-arm64.tar.gz"
      sha256 "7a521e4d8ad32f1248297052b6cef9c8c4cf4eb0bd82c9e16669421f6393b185"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-05-06T22-26-22Z/sigil-2026-05-06T22-26-22Z-linux-x64.tar.gz"
      sha256 "74503709e5100f30ccf68aa42c00960a26d16620950113de124236195e36283e"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
    pkgshare.install "language"
    pkgshare.install "runtime"
  end

  test do
    assert_match "sigil 2026-05-06T22-26-22Z", shell_output("#{bin}/sigil --version")
    system bin/"sigil", "init"
    (testpath/"src/main.sigil").write <<~SIGIL
      λmain()=>Int=1+1
    SIGIL
    (testpath/"tests/basic.sigil").write <<~SIGIL
      λmain()=>Unit=()

      test "adds" {
        1+1=2
      }
    SIGIL
    system bin/"sigil", "inspect", "codegen", "src/main.sigil"
    system bin/"sigil", "compile", "."
    system bin/"sigil", "test"
  end
end
