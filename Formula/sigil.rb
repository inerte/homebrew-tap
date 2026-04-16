class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-16T00-44-00Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T00-44-00Z/sigil-2026-04-16T00-44-00Z-darwin-arm64.tar.gz"
      sha256 "faa9139a590d97560ccc385452a85b6d72b5439e9111a412b8224b211bd3f358"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T00-44-00Z/sigil-2026-04-16T00-44-00Z-darwin-x64.tar.gz"
      sha256 "c7873482f7c83c8aac2a8c51b874ca6a189b396c816c3bbcb0a79707bf1a1cb8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T00-44-00Z/sigil-2026-04-16T00-44-00Z-linux-arm64.tar.gz"
      sha256 "468640a36ab13c1c9d82108b838c122424b06f892b345b6b2029b820268b2590"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T00-44-00Z/sigil-2026-04-16T00-44-00Z-linux-x64.tar.gz"
      sha256 "224e4f3dfd6c89674c7bf02e3a91457523f1b237ed186f0d542becc44bbd6180"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-04-16T00-44-00Z", shell_output("#{bin}/sigil --version")
  end
end
