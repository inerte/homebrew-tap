class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-08T15-08-11Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-08T15-08-11Z/sigil-2026-04-08T15-08-11Z-darwin-arm64.tar.gz"
      sha256 "bf662c1ef0fa0346ff191465f2283aad5854cfa7bdd16c25c6eaf64a1a774dd2"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-08T15-08-11Z/sigil-2026-04-08T15-08-11Z-darwin-x64.tar.gz"
      sha256 "074ae354cb4e89cba4f14f39be37daaf17331519ea9ac4db0bf1cf6ed22f7e21"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-08T15-08-11Z/sigil-2026-04-08T15-08-11Z-linux-arm64.tar.gz"
      sha256 "ea9e69334b510e04914b0a5785855e44bbc4504fdfc90c7bc0a79c76178941e4"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-08T15-08-11Z/sigil-2026-04-08T15-08-11Z-linux-x64.tar.gz"
      sha256 "4b3d820535fa99b37c6eacb8a0d41edcb1c15682b781adffd8389448b2564021"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-04-08T15-08-11Z", shell_output("#{bin}/sigil --version")
  end
end
