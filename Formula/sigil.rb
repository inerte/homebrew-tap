class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-03-30T19-04-24Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-30T19-04-24Z/sigil-2026-03-30T19-04-24Z-darwin-arm64.tar.gz"
      sha256 "6ae8ec9b5fb70c783b9458e596b193ace94e806b4ea4156ffa71a083c8ec1cda"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-30T19-04-24Z/sigil-2026-03-30T19-04-24Z-darwin-x64.tar.gz"
      sha256 "b8a203d85334396893a7ff31de7800a5f6a8c6f9687586aa9e5e0426af4a7dda"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-30T19-04-24Z/sigil-2026-03-30T19-04-24Z-linux-arm64.tar.gz"
      sha256 "cec076186f38a81ec673d42ce11ee553bf040115944102f81d985ddc4e445e7c"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-30T19-04-24Z/sigil-2026-03-30T19-04-24Z-linux-x64.tar.gz"
      sha256 "8079e345c4e55545fd066be3c458def4364323916204c5971bbcccc2b5af5e74"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-03-30T19-04-24Z", shell_output("#{bin}/sigil --version")
  end
end
