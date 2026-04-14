class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-14T22-52-05Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-14T22-52-05Z/sigil-2026-04-14T22-52-05Z-darwin-arm64.tar.gz"
      sha256 "95e3724feaa5193fd0fbddb99b1d7eb6a981a7603f7fbe8085492f1d06f3c69b"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-14T22-52-05Z/sigil-2026-04-14T22-52-05Z-darwin-x64.tar.gz"
      sha256 "06d04bacdbb4e78bca6d2118ef6410298d61474c97253ee42879c8046d4253c4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-14T22-52-05Z/sigil-2026-04-14T22-52-05Z-linux-arm64.tar.gz"
      sha256 "a6345841e3e3398682cc6040fe4a84f6ff620736a67dc2e8a548c6f9e0fd317c"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-14T22-52-05Z/sigil-2026-04-14T22-52-05Z-linux-x64.tar.gz"
      sha256 "cd0754fd7f65c467e07734e6f1083b9a642bd3bdd7dd30aec7ca20be2013f1c7"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-04-14T22-52-05Z", shell_output("#{bin}/sigil --version")
  end
end
