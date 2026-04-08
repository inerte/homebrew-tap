class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-08T01-57-23Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-08T01-57-23Z/sigil-2026-04-08T01-57-23Z-darwin-arm64.tar.gz"
      sha256 "d8f33a6f9ae1335ab1217196a339e854b1c994444f4f9a781fcad4d5fa770f56"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-08T01-57-23Z/sigil-2026-04-08T01-57-23Z-darwin-x64.tar.gz"
      sha256 "71df864f05bcca3c4de8442edd0490c79cf4a7f595cd3444f98e22f668456606"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-08T01-57-23Z/sigil-2026-04-08T01-57-23Z-linux-arm64.tar.gz"
      sha256 "76ffb641c14e17e42e285fdfd2759be06919a8e1ba4f05594aa68e01865f5376"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-08T01-57-23Z/sigil-2026-04-08T01-57-23Z-linux-x64.tar.gz"
      sha256 "ea076f800b9caf7e88f286c8ebb0b366b93ff13774ad919f6fc6a393b54fc255"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-04-08T01-57-23Z", shell_output("#{bin}/sigil --version")
  end
end
