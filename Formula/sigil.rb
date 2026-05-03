class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-05-03T14-09-36Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-05-03T14-09-36Z/sigil-2026-05-03T14-09-36Z-darwin-arm64.tar.gz"
      sha256 "8c1e47aedc0af9679972c68f986cead241031e119111a280d2b42219d6ea7205"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-05-03T14-09-36Z/sigil-2026-05-03T14-09-36Z-darwin-x64.tar.gz"
      sha256 "ca61140e2a4e1534bed963c0822b8cd3db041595082fb72a7502ccf2db435c57"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-05-03T14-09-36Z/sigil-2026-05-03T14-09-36Z-linux-arm64.tar.gz"
      sha256 "3188ad4ffcddc4f00bc7f9118b60eabf85bb8c9a93dfe6fe813ec883f809b819"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-05-03T14-09-36Z/sigil-2026-05-03T14-09-36Z-linux-x64.tar.gz"
      sha256 "4fbd557913f2ab980e5eb3891d00c0fbcf809834a91ed76614e6bd26e70a8e69"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
    pkgshare.install "runtime"
  end

  test do
    assert_match "sigil 2026-05-03T14-09-36Z", shell_output("#{bin}/sigil --version")
  end
end
