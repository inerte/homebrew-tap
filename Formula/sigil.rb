class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-05-04T15-01-46Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-05-04T15-01-46Z/sigil-2026-05-04T15-01-46Z-darwin-arm64.tar.gz"
      sha256 "e1a9af273095f4fccbcfba811e544dec43f4292df1d1ec921a6ebfa9834c7c3b"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-05-04T15-01-46Z/sigil-2026-05-04T15-01-46Z-darwin-x64.tar.gz"
      sha256 "df51e0d22197cd46fdc66d3cc3ffa3d662f0a00cb8f9128eb21097de320eb7fd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-05-04T15-01-46Z/sigil-2026-05-04T15-01-46Z-linux-arm64.tar.gz"
      sha256 "2ada44623a368bd59129a3408c0cde7c22395212068b6c906bf1a3d5518f6d9f"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-05-04T15-01-46Z/sigil-2026-05-04T15-01-46Z-linux-x64.tar.gz"
      sha256 "774f0a7af943ccce7c0b7d74070212e9f061cf633c0e01b5ddf49cb4cfd9c8a7"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
    pkgshare.install "language"
    pkgshare.install "runtime"
  end

  test do
    assert_match "sigil 2026-05-04T15-01-46Z", shell_output("#{bin}/sigil --version")
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
