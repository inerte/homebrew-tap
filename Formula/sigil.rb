class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-15T22-28-16Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-15T22-28-16Z/sigil-2026-04-15T22-28-16Z-darwin-arm64.tar.gz"
      sha256 "5dd44f83308bb5b82fa62d48c2490bcfaedc93a65155bfb4377f9fba8c3330fa"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-15T22-28-16Z/sigil-2026-04-15T22-28-16Z-darwin-x64.tar.gz"
      sha256 "9ead628c8c7ba18f8416b728c44d85a041c6cf3c559aae6ef994533b76ced1d8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-15T22-28-16Z/sigil-2026-04-15T22-28-16Z-linux-arm64.tar.gz"
      sha256 "9b809da16585f235d23c0a89b70d3ff94184c8da81bc27c93715a91efcbe13ec"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-15T22-28-16Z/sigil-2026-04-15T22-28-16Z-linux-x64.tar.gz"
      sha256 "e4a64d2cec199dc38b07e8054cbace6e40bc17d81e255733df0b2d1e82fedd1a"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-04-15T22-28-16Z", shell_output("#{bin}/sigil --version")
  end
end
