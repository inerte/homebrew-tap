class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-05-01T21-29-28Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-05-01T21-29-28Z/sigil-2026-05-01T21-29-28Z-darwin-arm64.tar.gz"
      sha256 "35abed13fd8d15f0bb3f7b3f1de1ae106d073e626c9987fe8bf2d71686a9c628"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-05-01T21-29-28Z/sigil-2026-05-01T21-29-28Z-darwin-x64.tar.gz"
      sha256 "398147931d0a74ba2d12c2d380aadef85d86ab92ca70bea3d9a62ebd75a7718b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-05-01T21-29-28Z/sigil-2026-05-01T21-29-28Z-linux-arm64.tar.gz"
      sha256 "85008a513f4065280f1c9bd406ae14ae1174eb19e86a5db119c7407fc5f7dc95"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-05-01T21-29-28Z/sigil-2026-05-01T21-29-28Z-linux-x64.tar.gz"
      sha256 "843f7e7c309d231077d4c8a3c8a1832d2f33f6af4a97f1e309f3a10c0173c7e1"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
    pkgshare.install "runtime"
  end

  test do
    assert_match "sigil 2026-05-01T21-29-28Z", shell_output("#{bin}/sigil --version")
  end
end
