class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-03-15T00-13-16Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-15T00-13-16Z/sigil-2026-03-15T00-13-16Z-darwin-arm64.tar.gz"
      sha256 "784db7fcfcb7e77a4161203c4790a1f2b65a39d1adfa0cca4ea85fe02461d2dd"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-15T00-13-16Z/sigil-2026-03-15T00-13-16Z-darwin-x64.tar.gz"
      sha256 "bdb2555bf0b182fbab8c00340f6a4f9b3a90475c8ff6fbf13e30787b91f47ae8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-15T00-13-16Z/sigil-2026-03-15T00-13-16Z-linux-arm64.tar.gz"
      sha256 "461bc9b1cd246cab359fd79503b41cd84ed0f1f142880f6dd194b659bd8be3c3"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-15T00-13-16Z/sigil-2026-03-15T00-13-16Z-linux-x64.tar.gz"
      sha256 "cc7832d9c8c5a6eb26a17fbce113ca043af327f707186db5d3d5b30771c923fc"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-03-15T00-13-16Z", shell_output("#{bin}/sigil --version")
  end
end
