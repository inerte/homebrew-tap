class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-24T13-57-09Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-24T13-57-09Z/sigil-2026-04-24T13-57-09Z-darwin-arm64.tar.gz"
      sha256 "de1fc05063946da4795d9b0b36e0ad9dab8801b8a756c14009d369be9ac68a16"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-24T13-57-09Z/sigil-2026-04-24T13-57-09Z-darwin-x64.tar.gz"
      sha256 "23b4462b76f81019b986a1c34499fcb77e47aa950ef62c81c620f431ce8c1548"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-24T13-57-09Z/sigil-2026-04-24T13-57-09Z-linux-arm64.tar.gz"
      sha256 "90e0ae24eb56e38027478ea9d404c63d6db4f758cf0bbd76b20c608fe82742b6"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-24T13-57-09Z/sigil-2026-04-24T13-57-09Z-linux-x64.tar.gz"
      sha256 "dfa02fb5202245d80160c310a6e4ff172719318e91bd8995af5306b66c8a2c5c"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
    pkgshare.install "runtime"
  end

  test do
    assert_match "sigil 2026-04-24T13-57-09Z", shell_output("#{bin}/sigil --version")
  end
end
