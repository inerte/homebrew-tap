class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-03-15T22-32-05Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-15T22-32-05Z/sigil-2026-03-15T22-32-05Z-darwin-arm64.tar.gz"
      sha256 "163628bf2509745bff0eb4995a770d8ed3322a12cd3681ae4dd86971d6e174c8"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-15T22-32-05Z/sigil-2026-03-15T22-32-05Z-darwin-x64.tar.gz"
      sha256 "57a6065e1008613e174d265f57f0dea76ed55bbf6f8e98b797be352632a1fb7e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-15T22-32-05Z/sigil-2026-03-15T22-32-05Z-linux-arm64.tar.gz"
      sha256 "0b69ec7e0c65104398e3d0719475c1eed9afe3f491730ef638feb3e182952cc7"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-15T22-32-05Z/sigil-2026-03-15T22-32-05Z-linux-x64.tar.gz"
      sha256 "59cd71a43ca2b14d7c2bd041ea72f3736fb4a3c61e637ebad9ca48c66c1b19a2"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-03-15T22-32-05Z", shell_output("#{bin}/sigil --version")
  end
end
