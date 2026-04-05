class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-05T14-31-38Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-05T14-31-38Z/sigil-2026-04-05T14-31-38Z-darwin-arm64.tar.gz"
      sha256 "39c1cf48fec6af93a08bd182fd62c8ec3662f0412c0ecce4c00ba3e04180839d"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-05T14-31-38Z/sigil-2026-04-05T14-31-38Z-darwin-x64.tar.gz"
      sha256 "5e640ee90b771209ee51c10911545c29680cffb22c8d35a6cf3cf598106289dc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-05T14-31-38Z/sigil-2026-04-05T14-31-38Z-linux-arm64.tar.gz"
      sha256 "4387b542144b1d057ff5c882aa23e616e2892a0a3f969b5915076363b3ba2b71"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-05T14-31-38Z/sigil-2026-04-05T14-31-38Z-linux-x64.tar.gz"
      sha256 "58f8d09149bc904c4f433ff33abfff86ee42b17c409cb9ffba78d9ad73b8bb85"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-04-05T14-31-38Z", shell_output("#{bin}/sigil --version")
  end
end
