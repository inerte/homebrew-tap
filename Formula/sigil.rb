class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-08T23-49-33Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-08T23-49-33Z/sigil-2026-04-08T23-49-33Z-darwin-arm64.tar.gz"
      sha256 "cf529818aa0885ac38f01b4341faf52dc75468c9ae3b5e952bab91196e36c264"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-08T23-49-33Z/sigil-2026-04-08T23-49-33Z-darwin-x64.tar.gz"
      sha256 "8ca67381c71ac2f80112566f8092c5fdaf573b18feed260211fd674753764132"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-08T23-49-33Z/sigil-2026-04-08T23-49-33Z-linux-arm64.tar.gz"
      sha256 "d216cf0479e41fc95aff4c13004c5ae3826fb03bb9267c8198027ebdfe3d8cc9"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-08T23-49-33Z/sigil-2026-04-08T23-49-33Z-linux-x64.tar.gz"
      sha256 "2e5602f950e4216b77689d1434d5cbaee5448a6e9053363795cfe8ded68fe94c"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-04-08T23-49-33Z", shell_output("#{bin}/sigil --version")
  end
end
