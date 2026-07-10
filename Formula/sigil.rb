class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-07-10T14-39-08Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-07-10T14-39-08Z/sigil-2026-07-10T14-39-08Z-darwin-arm64.tar.gz"
      sha256 "89512130ed329c52442d3406d497cc49bd430d047e5f64ae2d9e32d93bbb7f28"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-07-10T14-39-08Z/sigil-2026-07-10T14-39-08Z-darwin-x64.tar.gz"
      sha256 "8164615ec0e06e3048c2d0465ec763a89fc564e20dad4d7b68e0a01cde5d1fe5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-07-10T14-39-08Z/sigil-2026-07-10T14-39-08Z-linux-arm64.tar.gz"
      sha256 "6901ec7a7e45fb8bd2c09af622cbd1388afbc79a8e983440913c1484432edb01"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-07-10T14-39-08Z/sigil-2026-07-10T14-39-08Z-linux-x64.tar.gz"
      sha256 "21dc2a14b6eb7b8f0ca2ec994d325ec2b1d86d6a9a02a283e83e1cce72dc7b6c"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
    pkgshare.install "language"
    pkgshare.install "runtime"
  end

  test do
    assert_match "sigil 2026-07-10T14-39-08Z", shell_output("#{bin}/sigil --version")
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
