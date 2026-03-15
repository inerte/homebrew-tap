class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-03-15T05-14-53Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-15T05-14-53Z/sigil-2026-03-15T05-14-53Z-darwin-arm64.tar.gz"
      sha256 "f9113e3653d452f78c91d74916359fd03634f25137fc30affe7222c75bb2ea75"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-15T05-14-53Z/sigil-2026-03-15T05-14-53Z-darwin-x64.tar.gz"
      sha256 "a77da959914a79ef20be995dc2cf4a28873de948511c493f7591e40ef70fd25b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-15T05-14-53Z/sigil-2026-03-15T05-14-53Z-linux-arm64.tar.gz"
      sha256 "c3651193908c9203d91c748dd880a3d50091d61d20f37640d7d95751ab175a62"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-15T05-14-53Z/sigil-2026-03-15T05-14-53Z-linux-x64.tar.gz"
      sha256 "c5086966933774ca8d8421482fece96c9725627d96e255272664c1c3ca1d9a91"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-03-15T05-14-53Z", shell_output("#{bin}/sigil --version")
  end
end
