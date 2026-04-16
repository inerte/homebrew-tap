class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-16T15-18-56Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T15-18-56Z/sigil-2026-04-16T15-18-56Z-darwin-arm64.tar.gz"
      sha256 "1831365c859f3eb8b3e281a038642eac1a719f292b63f4bee6dce437ac7179bd"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T15-18-56Z/sigil-2026-04-16T15-18-56Z-darwin-x64.tar.gz"
      sha256 "3b62a4a1d56a1bcaad01ebf6637d45094b84c14dbcd062c7ec459a072d4e2247"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T15-18-56Z/sigil-2026-04-16T15-18-56Z-linux-arm64.tar.gz"
      sha256 "36cc9662aad8ed6d8691d0cfbcf69cb46e83a053cb8053c66ed8d785e821009e"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T15-18-56Z/sigil-2026-04-16T15-18-56Z-linux-x64.tar.gz"
      sha256 "79e4767c713f2f803a42ae95e4d59db1d023aff2fbf167e7e5f116ddd8848fe6"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
    pkgshare.install "runtime"
  end

  test do
    assert_match "sigil 2026-04-16T15-18-56Z", shell_output("#{bin}/sigil --version")
  end
end
