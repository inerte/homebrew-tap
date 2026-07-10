class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-07-10T16-10-44Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-07-10T16-10-44Z/sigil-2026-07-10T16-10-44Z-darwin-arm64.tar.gz"
      sha256 "5b4cfdaac240831e047db4278087562603fb2a65e672bb1529754a9e423a444a"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-07-10T16-10-44Z/sigil-2026-07-10T16-10-44Z-darwin-x64.tar.gz"
      sha256 "222085105fad4669059e03dd85e6f55ba4aa809d9c0e21d26ef2d0812ce0578a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-07-10T16-10-44Z/sigil-2026-07-10T16-10-44Z-linux-arm64.tar.gz"
      sha256 "1e973856e7123e37fd963ff88add613e58ef33f408cb360934498b368d5ffc92"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-07-10T16-10-44Z/sigil-2026-07-10T16-10-44Z-linux-x64.tar.gz"
      sha256 "b2d3f827b6b939d01aed3320061aa6c216003c14cc8a18d30c1ea212b3173e43"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
    pkgshare.install "language"
    pkgshare.install "runtime"
  end

  test do
    assert_match "sigil 2026-07-10T16-10-44Z", shell_output("#{bin}/sigil --version")
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
