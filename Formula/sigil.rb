class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-05T17-31-44Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-05T17-31-44Z/sigil-2026-04-05T17-31-44Z-darwin-arm64.tar.gz"
      sha256 "2e29287ed2389cdc9fbb0a93611e5a226b11f39724da68eda80b788ccac5ffb2"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-05T17-31-44Z/sigil-2026-04-05T17-31-44Z-darwin-x64.tar.gz"
      sha256 "ecbe958b62516232d26eb24a5fa0ea8e6d2aa5fe15a51051f31504f899846d6e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-05T17-31-44Z/sigil-2026-04-05T17-31-44Z-linux-arm64.tar.gz"
      sha256 "e4784faf0aa8c2f37fb00067160c5514e0a37f7a5b2e2b5e5e85797635f8a47a"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-05T17-31-44Z/sigil-2026-04-05T17-31-44Z-linux-x64.tar.gz"
      sha256 "fd04ee544d19d023bd0980357eabbc7cd97b1eca072b2c3cb352229487560ff2"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-04-05T17-31-44Z", shell_output("#{bin}/sigil --version")
  end
end
