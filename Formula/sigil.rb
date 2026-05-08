class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-05-08T15-09-46Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-05-08T15-09-46Z/sigil-2026-05-08T15-09-46Z-darwin-arm64.tar.gz"
      sha256 "3641c54045247d9bf7ef8ce1f27cee8fcb6f3932e483527f07c4e407e8709db3"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-05-08T15-09-46Z/sigil-2026-05-08T15-09-46Z-darwin-x64.tar.gz"
      sha256 "491f487b494d54de22e049dfc8d332652b3aa1d1ac6d93b984497212650e3512"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-05-08T15-09-46Z/sigil-2026-05-08T15-09-46Z-linux-arm64.tar.gz"
      sha256 "a738d28ff1c757ce04afd7b0a3cb7eb3ba2f4b49593de84c8cb41462d69f8e44"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-05-08T15-09-46Z/sigil-2026-05-08T15-09-46Z-linux-x64.tar.gz"
      sha256 "fdc262692d8ca01da1433db755d3c08519af2380d154433d498788f7c5ccb4f1"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
    pkgshare.install "language"
    pkgshare.install "runtime"
  end

  test do
    assert_match "sigil 2026-05-08T15-09-46Z", shell_output("#{bin}/sigil --version")
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
