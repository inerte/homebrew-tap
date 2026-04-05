class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-05T18-34-51Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-05T18-34-51Z/sigil-2026-04-05T18-34-51Z-darwin-arm64.tar.gz"
      sha256 "91e22c9e100558fc5f4a0ab75915553f9be4080881e5843cae8f7469e034d752"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-05T18-34-51Z/sigil-2026-04-05T18-34-51Z-darwin-x64.tar.gz"
      sha256 "d896efce79b2a11a47aa230a77d5512f39702808d5b2267ab317fddcf73ba4c9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-05T18-34-51Z/sigil-2026-04-05T18-34-51Z-linux-arm64.tar.gz"
      sha256 "b5119f97d03d29e0c50d977d7076b2db41b3d4a373a6cd66603d769dc3bf96a2"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-05T18-34-51Z/sigil-2026-04-05T18-34-51Z-linux-x64.tar.gz"
      sha256 "78add7f9fc70651eb3d4ca3126b5dbcbe4a3bcd0f5066e17176561fd2665fa00"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-04-05T18-34-51Z", shell_output("#{bin}/sigil --version")
  end
end
