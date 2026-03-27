class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-03-27T18-09-03Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-27T18-09-03Z/sigil-2026-03-27T18-09-03Z-darwin-arm64.tar.gz"
      sha256 "97ebd4535f78a0a30e34b22639e6c994a3c9e50aaa41c886aa0ddb7d486b3ba8"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-27T18-09-03Z/sigil-2026-03-27T18-09-03Z-darwin-x64.tar.gz"
      sha256 "a110d2825ead2b0c5c13f72686af2d1edf7b2be069947e9d268bd115991fa552"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-27T18-09-03Z/sigil-2026-03-27T18-09-03Z-linux-arm64.tar.gz"
      sha256 "6185558c2b6aeeedc44475c917ff93dc6446b273051ee6424c75ee43a694b257"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-27T18-09-03Z/sigil-2026-03-27T18-09-03Z-linux-x64.tar.gz"
      sha256 "6a68a8be5582419dfca6f0fad04a372909c9f91cd5ab42d1c04deb1b694c199a"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-03-27T18-09-03Z", shell_output("#{bin}/sigil --version")
  end
end
