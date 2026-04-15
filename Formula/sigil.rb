class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-15T16-09-57Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-15T16-09-57Z/sigil-2026-04-15T16-09-57Z-darwin-arm64.tar.gz"
      sha256 "1d7fc7a262d7c3230ba86d29020d089bd6c057bdd52b91cb1c0d781a79436373"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-15T16-09-57Z/sigil-2026-04-15T16-09-57Z-darwin-x64.tar.gz"
      sha256 "9ebab49b3a4d5f1afd1c69fa4fe3c5912b7f73508b06052112105b8d4c906b33"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-15T16-09-57Z/sigil-2026-04-15T16-09-57Z-linux-arm64.tar.gz"
      sha256 "8811c717db1c61baa20743b67732a637c2dd89db87f50d775c7148962fe5947e"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-15T16-09-57Z/sigil-2026-04-15T16-09-57Z-linux-x64.tar.gz"
      sha256 "77e99ce038dc2d4b757c052b94898a9b883156daeb648132264fb16a96fd3b55"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-04-15T16-09-57Z", shell_output("#{bin}/sigil --version")
  end
end
