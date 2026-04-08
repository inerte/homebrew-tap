class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-08T15-16-00Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-08T15-16-00Z/sigil-2026-04-08T15-16-00Z-darwin-arm64.tar.gz"
      sha256 "cd69d71b579f73c2f2741b60617fe66d05352cb16a8116a80cf8f7f2dd72dc94"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-08T15-16-00Z/sigil-2026-04-08T15-16-00Z-darwin-x64.tar.gz"
      sha256 "1f7424742e298f11c86ec4358c0df89ed10963112a340d2d5f156c1952a51512"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-08T15-16-00Z/sigil-2026-04-08T15-16-00Z-linux-arm64.tar.gz"
      sha256 "2f54add127a8cef2af72220d9610a136d1b5889de6275f9864bc44f6ee676d79"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-08T15-16-00Z/sigil-2026-04-08T15-16-00Z-linux-x64.tar.gz"
      sha256 "f53b7dc696603655226a11197a9e3fdd9ddecf31aaf6c38c8bfb275df1e104f9"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-04-08T15-16-00Z", shell_output("#{bin}/sigil --version")
  end
end
