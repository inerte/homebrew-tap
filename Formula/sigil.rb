class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-05T17-00-13Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-05T17-00-13Z/sigil-2026-04-05T17-00-13Z-darwin-arm64.tar.gz"
      sha256 "44b24e5aaa8e356e5b728d04998617d0e2a896927a8dbcb0f9549c1a794755e9"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-05T17-00-13Z/sigil-2026-04-05T17-00-13Z-darwin-x64.tar.gz"
      sha256 "2257cde22289ebfb9432d93c24aae583f31fbcf32f5481cf7f5bfab319d0388a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-05T17-00-13Z/sigil-2026-04-05T17-00-13Z-linux-arm64.tar.gz"
      sha256 "1f5ca3fb2e56632d32a649549e536bb4b1acf8be669477f9b571f2501579fe06"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-05T17-00-13Z/sigil-2026-04-05T17-00-13Z-linux-x64.tar.gz"
      sha256 "00b5cf075ce1841902e347b889efac3a6461e716fc4f82387be9bdeede8b1b6d"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-04-05T17-00-13Z", shell_output("#{bin}/sigil --version")
  end
end
