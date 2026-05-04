class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-05-04T03-41-02Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-05-04T03-41-02Z/sigil-2026-05-04T03-41-02Z-darwin-arm64.tar.gz"
      sha256 "0a5331b1b87be82aa2bedf884acec017c7c897ce0cf899cc390ca845398fee9b"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-05-04T03-41-02Z/sigil-2026-05-04T03-41-02Z-darwin-x64.tar.gz"
      sha256 "13b6aa3822e06d1687cf94218422946bc112ffc1c353a534c6422d4caf3a5bf9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-05-04T03-41-02Z/sigil-2026-05-04T03-41-02Z-linux-arm64.tar.gz"
      sha256 "6eeebf0f5d49c74a654880a316aba4fb37c13526b41ca21971ef54736c05090f"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-05-04T03-41-02Z/sigil-2026-05-04T03-41-02Z-linux-x64.tar.gz"
      sha256 "ea63e91372a4176d118e223f43eb9b04c36b5766ec862882bc2ff429e4a14b25"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
    pkgshare.install "language"
    pkgshare.install "runtime"
  end

  test do
    assert_match "sigil 2026-05-04T03-41-02Z", shell_output("#{bin}/sigil --version")
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
