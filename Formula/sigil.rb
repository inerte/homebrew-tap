class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-14T01-01-52Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-14T01-01-52Z/sigil-2026-04-14T01-01-52Z-darwin-arm64.tar.gz"
      sha256 "910405c71f5eccf146fe595bf0668b6cc2d940745162cb731b343e2a89ac31bc"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-14T01-01-52Z/sigil-2026-04-14T01-01-52Z-darwin-x64.tar.gz"
      sha256 "a905be6a8828c162b13e7d25b09d5e5cea2eff3e7f15cafacb2693595a3d6ee3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-14T01-01-52Z/sigil-2026-04-14T01-01-52Z-linux-arm64.tar.gz"
      sha256 "a8622cc8d6950f8b0a89f2b0def6382b58185e56ac2450a404c52a3f06641ab3"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-14T01-01-52Z/sigil-2026-04-14T01-01-52Z-linux-x64.tar.gz"
      sha256 "35b567c2f2b82d73eb4e16674fb1a30714b481413efc6354bcb5f54a416cfe4e"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-04-14T01-01-52Z", shell_output("#{bin}/sigil --version")
  end
end
