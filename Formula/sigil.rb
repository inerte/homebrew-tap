class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-03-28T22-33-28Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-28T22-33-28Z/sigil-2026-03-28T22-33-28Z-darwin-arm64.tar.gz"
      sha256 "810027d382cc83122e6ea2149884a5fa930567e195ea9081a966e12bc31c43c1"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-28T22-33-28Z/sigil-2026-03-28T22-33-28Z-darwin-x64.tar.gz"
      sha256 "e17ae7d840d0e34c5d662e99e10f7f987c1cd10c9ac56ea3d30a7e06768fc49f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-28T22-33-28Z/sigil-2026-03-28T22-33-28Z-linux-arm64.tar.gz"
      sha256 "34ccfd9619f99fc0c6ac14bfee23dda341574d6dcd38520830e2e7085c77a062"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-28T22-33-28Z/sigil-2026-03-28T22-33-28Z-linux-x64.tar.gz"
      sha256 "b2f542bd721a2118426a42ca5ae50aa0f303286da58f12cddc66036a82b476ed"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-03-28T22-33-28Z", shell_output("#{bin}/sigil --version")
  end
end
