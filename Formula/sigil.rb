class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-03-31T18-25-50Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-31T18-25-50Z/sigil-2026-03-31T18-25-50Z-darwin-arm64.tar.gz"
      sha256 "8c1e1b66a4ac5375318f2ba197d7fe0f084ce5005c63434000bc51438efd6671"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-31T18-25-50Z/sigil-2026-03-31T18-25-50Z-darwin-x64.tar.gz"
      sha256 "a7dc5ca94426c7e0c5211158c1813ac2d73e2cd1a46b4378c2d440008105c8d0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-31T18-25-50Z/sigil-2026-03-31T18-25-50Z-linux-arm64.tar.gz"
      sha256 "d0931ef6e48b7830e0b9b7466ae585c63e3540638b2ce654de533a03f77ef5a4"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-31T18-25-50Z/sigil-2026-03-31T18-25-50Z-linux-x64.tar.gz"
      sha256 "d54a84dc2834f2f00b9861f6944558e31eb2356476ac2b2048ee7dc007c08003"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-03-31T18-25-50Z", shell_output("#{bin}/sigil --version")
  end
end
