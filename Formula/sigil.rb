class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-19T15-28-07Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-19T15-28-07Z/sigil-2026-04-19T15-28-07Z-darwin-arm64.tar.gz"
      sha256 "803ca799ef4601af94f1e511ceda126b7abc593a920ba91ca346fde20f367e17"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-19T15-28-07Z/sigil-2026-04-19T15-28-07Z-darwin-x64.tar.gz"
      sha256 "2078ccdf3322f13abee7adc2e31e56a32bde82d4bc702d0544862e28a2f1ae57"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-19T15-28-07Z/sigil-2026-04-19T15-28-07Z-linux-arm64.tar.gz"
      sha256 "ff3e32095cd204661f176f2f098a15f6d16a12add1feb9979b52661175c58ac5"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-19T15-28-07Z/sigil-2026-04-19T15-28-07Z-linux-x64.tar.gz"
      sha256 "d2d1ec9ef7dd766aaea4cd21bdd84cf1395c06145ab96de40bdbd3aed177653a"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
    pkgshare.install "runtime"
  end

  test do
    assert_match "sigil 2026-04-19T15-28-07Z", shell_output("#{bin}/sigil --version")
  end
end
