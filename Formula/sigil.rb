class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-03-30T19-46-38Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-30T19-46-38Z/sigil-2026-03-30T19-46-38Z-darwin-arm64.tar.gz"
      sha256 "b9201cc7ccf467068a3522ee79323ff1b68bfb980ae578ab9c5c204c1a4ccfd5"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-30T19-46-38Z/sigil-2026-03-30T19-46-38Z-darwin-x64.tar.gz"
      sha256 "46df1e1751f484749daf669b21dddc78f1b67bc2b882bfe922b3eebf8b8b58ec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-30T19-46-38Z/sigil-2026-03-30T19-46-38Z-linux-arm64.tar.gz"
      sha256 "7c5614a6aa7af0664b4cd65296b0fa59419b6a962a30a6371d02c0b5d5d910a4"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-30T19-46-38Z/sigil-2026-03-30T19-46-38Z-linux-x64.tar.gz"
      sha256 "fbacfe4917d48224e78a83c1a097ec76e3f3c3e725ae03de8dde1e17e2b2e315"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-03-30T19-46-38Z", shell_output("#{bin}/sigil --version")
  end
end
